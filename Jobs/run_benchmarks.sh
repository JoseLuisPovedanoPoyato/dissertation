#!/bin/bash

script_location="$(dirname "${BASH_SOURCE[0]}")"

# Request Generator Commands
function deploy_request_generator(){
	echo "Deploying the request generator..."
	kubectl create -f ${script_location}/../RequestGenerator/request_gen_manifest.yml
    grace "kubectl get pods --all-namespaces | grep request-generator | grep -v Running" 5
	echo "... Request generator is live and running"
}

function deploy_linkerd_request_generator(){ # Might not need this look into automaticly injecting linkerd
	echo "Deploying the linkerd injected request generator..."
	kubectl create -f ${script_location}/../RequestGenerator/request_gen_manifest.yml
    grace "kubectl get pods --all-namespaces | grep request-generator | grep -v Running" 5
	echo "... Request generator is live and running"
}

function delete_request_generator(){
	echo "Deleting the request generator..."
	kubectl delete deployments request-generator
}

function deploy_benchmark_controller(){
	echo "Deploying the benchmark controller..."
	kubectl create -f ${script_location}/../BenchmarkController/benchmark_controller_manifest.yml
    grace "kubectl get pods --all-namespaces | grep benchmark-controller | grep -v Running" 5
	echo "... Request generator is live and running"
}

function run_send_request_job() {
	local smt="$1"
    echo "Finding benchmark controller pod..."
	local req_pod=$(kubectl get pod -l app=benchmark-controller -o jsonpath="{.items[0].metadata.name}")
	echo "Benchmark Controller is sending the request..."
    local data='{"smt":"'"$smt"'"}'
    kubectl exec $req_pod -- curl -X POST http://localhost:5000/send_requests -H "Content-Type: application/json" -d "$data"
    kubectl cp default/$req_pod:results/ results/
}


# Install/Uninstall SMTs to/from cluster
# Linkerd installation commands
function install_linkerd_cluster() {
    echo "Installing Linkerd to cluster..."
	linkerd check --pre
	linkerd install --crds | kubectl apply -f -
    sleep 10
    linkerd install | kubectl apply -f -
	sleep 10
    linkerd check
    echo "Setting automatic Linkerd injections to newly deployed pods to default namespace..."
    kubectl annotate default "linkerd.io/inject=enabled"
}

function uninstall_linkerd_cluster() {
	linkerd uninstall | kubectl delete -f -
}

# Istio Installation commands
function install_istio_cluster(){
    echo "Installing Istio to cluster..."
    istioctl install --set profile=demo -y
    echo "Setting automatic Istio proxy injections to newly deployed pods to default namespace..."
    kubectl label namespace default istio-injection=enabled
}

function uninstall_istio_cluster() {
	yes Y | istioctl uninstall --purge
}

# Consul Installation Commands
function install_consul_cluster() {
	consul-k8s version
	yes Y | consul-k8s install 
	consul-k8s status
}

function uninstall_consul_cluster() {
	consul-k8s uninstall -auto-approve=true -wipe-data=true
}

function uninstall_all_smt(){
    uninstall_consul_cluster
    uninstall_istio_cluster
    uninstall_linkerd_cluster
    echo "System has no SMTs deployed"
}

## MicroCounter Deployment Commands
function deploy_counter(){
    local manifest=$1
    kubectl create -f $manifest
    grace "kubectl get pods --all-namespaces | grep micro-counter-deployment | grep -v Running" 60
    # This needs fixing doesn't work for services
    # grace "kubectl get services --all-namespaces | grep micro-counter-service | grep -v Running" 10
}

function delete_counter(){
	kubectl delete deployments/micro-counter
	kubectl delete services/micro-counter-service
    kubectl delete -f ${script_location}/../MicroCounter/bare_counter_manifest.yml
}

function deploy_counter_bare() {
    echo "Deploying a version of MicroCounter without any SMTs..."
    deploy_counter ${script_location}/../MicroCounter/bare_counter_manifest.yml
    echo "... Micro Counter using bare Kubernetes is now live"
}

function delete_counter_bare() {
    echo "Deleting bare micro-counter-deployment..."
    delete_counter
	echo "... Bare Kubernetes Micro Counter has been deleted"
}

function deploy_counter_linkerd_old() {
    echo "Generating MicroCounter manifest with linkerd injections..."
    linkerd inject ${script_location}/../MicroCounter/bare_counter_manifest.yml > ${script_location}/../MicroCounter/linkerd_counter_manifest.yml
    echo "Deploying MicroCounter using the linkerd injected manifest..."
	deploy_counter ${script_location}/../MicroCounter/linkerd_counter_manifest.yml
    echo "... Linkerd Injected Micro Counter is live"
}

function deploy_counter_linkerd() {
    echo "Deploying MicroCounter to a linkerd injected namespace..."
	deploy_counter ${script_location}/../MicroCounter/bare_counter_manifest.yml
    echo "... Linkerd Injected Micro Counter is live"
}

function delete_counter_linkerd() {
    echo "Deleting linkerd micro-counter-deployment"
	delete_counter
    sleep 3
	echo "... Linkerd Injected Micro Counter has been deleted"
}

function deploy_counter_istio() {
    echo "Deploying the microcounter pods to an Istio injected namespace..."
	deploy_counter ${script_location}/../MicroCounter/bare_counter_manifest.yml
    echo "... Istio Injected Micro Counter is live"
}

function delete_counter_istio() {
    echo "Deleting istio micro-counter-deployment"
	delete_counter
    sleep 3
	echo "... Istio Injected Micro Counter has been deleted"
}

function deploy_counter_consul() {
    echo "Deploying MicroCounter using a consul injected manifest..."
	deploy_counter ${script_location}/../MicroCounter/consul_counter_manifest.yml
    echo "... Consul Injected Micro Counter is live"
}

function delete_counter_consul() {
    echo "Deleting consul micro-counter-deployment"
	delete_counter
    sleep 3
	echo "... Consul Injected Micro Counter has been deleted"
}

# Execute a benchmark for each SMT
function benchmark_bare_kubernetes(){
    deploy_request_generator
    deploy_counter_bare
	run_send_request_job "kubernetes"
	#delete_counter_bare	
    #delete_request_generator
}

function benchmark_linkerd(){
    install_linkerd_cluster
    deploy_request_generator
	deploy_counter_linkerd
	run_send_request_job "linkerd"
	delete_counter_linkerd
    delete_request_generator
	uninstall_linkerd_cluster
}

function benchmark_istio(){
    install_istio_cluster
    deploy_request_generator
	deploy_counter_istio
	run_send_request_job "istio"
	delete_counter_istio
    delete_request_generator
	uninstall_istio_cluster
}

function benchmark_consul(){
    install_consul_cluster
	deploy_counter_consul
    deploy_request_generator
	run_send_request_job "consul"
	delete_counter_consul
    delete_request_generator
	uninstall_consul_cluster
}
#--

# Probs won't use this, not sure if it even works
function check_request_generator(){
	echo "Checking request generator is deployed"
    kubectl get pods --all-namespaces \
            | grep "request-generator" | grep -vE '[01]/1'

    [ $? -ne 1 ] && return 0
    return 1
}

function grace() {
    grace=10
    [ -n "$2" ] && grace="$2"

    while true; do
        eval $1
        if [ $? -eq 0 ]; then
            sleep 1
            grace=10
            continue
        fi

        if [ $grace -gt 0 ]; then
            sleep 1
            echo "grace period: $grace"
            grace=$(($grace-1))
            continue
        fi
        
        break
    done
}
# --

function check_meshed() {
    local ns_prefix="$1"
    
    echo "Checking for unmeshed pods in '$ns_prefix'"
    kubectl get pods --all-namespaces \
            | grep "$ns_prefix" | grep -vE '[012]/2'

    [ $? -ne 0 ] && return 0

    return 1
}
# --

function restart_counter_pods() {

    for num in $(seq 0 1 59); do
        local ns="emojivoto-$num"
        echo "Restarting pods in $ns"
        {  local pods="$(kubectl get -n "$ns" pods | grep -vE '^NAME' | awk '{print $1}')"
            kubectl delete -n "$ns" pods $pods --wait; } &
    done

    wait

    grace "kubectl get pods --all-namespaces | grep emojivoto | grep -v Running" 10
}
# --
function run() {
    echo "   Running '$@'"
    $@
}
# --

function install_benchmark() {
    local mesh="$1"
    local rps="$2"

    local duration=600
    local init_delay=10

    local app_count=$(kubectl get namespaces | grep emojivoto | wc -l)

    echo "Running $mesh benchmark"
    kubectl create ns benchmark
    [ "$mesh" == "istio" ] && \
        kubectl label namespace benchmark istio-injection=enabled
    if [ "$mesh" != "bare-metal" ] ; then
        helm install benchmark --namespace benchmark \
            --set wrk2.serviceMesh="$mesh" \
            --set wrk2.app.count="$app_count" \
            --set wrk2.RPS="$rps" \
            --set wrk2.duration=$duration \
            --set wrk2.connections=128 \
            --set wrk2.initDelay=$init_delay \
            ${script_location}/../configs/benchmark/
    else
        helm install benchmark --namespace benchmark \
            --set wrk2.app.count="$app_count" \
            --set wrk2.RPS="$rps" \
            --set wrk2.duration=$duration \
            --set wrk2.initDelay=$init_delay \
            --set wrk2.connections=128 \
            ${script_location}/../configs/benchmark/
    fi
}
# --

function run_bench() {
    local mesh="$1"
    local rps="$2"

    install_benchmark "$mesh" "$rps"
    grace "kubectl get pods -n benchmark | grep wrk2-prometheus | grep -v Running" 10

    echo "Benchmark started."

    while kubectl get jobs -n benchmark \
            | grep wrk2-prometheus \
            | grep -qv 1/1; do
        kubectl logs \
                --tail 1 -n benchmark  jobs/wrk2-prometheus -c wrk2-prometheus
        sleep 10
    done

    echo "Benchmark concluded. Updating summary metrics."
    helm install --create-namespace --namespace metrics-merger \
        metrics-merger ${script_location}/../configs/metrics-merger/
    sleep 5
    while kubectl get jobs -n metrics-merger \
            | grep wrk2-metrics-merger \
            | grep  -v "1/1"; do
        sleep 1
    done

    kubectl logs -n metrics-merger jobs/wrk2-metrics-merger

    echo "Cleaning up."
    helm uninstall benchmark --namespace benchmark
    kubectl delete ns benchmark --wait
    helm uninstall --namespace metrics-merger metrics-merger
    kubectl delete ns metrics-merger --wait
}
# --

function istio_extra_cleanup() {
    # this is ugly but istio-system namespace gets stuck sometimes
    kubectl get -n istio-system \
            istiooperators.install.istio.io \
            istiocontrolplane \
            -o json \
        | sed 's/"istio-finalizer.install.istio.io"//' \
        | kubectl apply -f -

    lokoctl component delete experimental-istio-operator \
                                                --confirm --delete-namespace
    kubectl delete --now --timeout=10s $(kubectl get clusterroles -o name | grep istio)
    kubectl delete --now --timeout=10s $(kubectl get clusterrolebindings -o name | grep istio)
    kubectl delete --now --timeout=10s  $(kubectl get crd -o name | grep istio)
    kubectl delete --now --timeout=10s \
            $(kubectl get validatingwebhookconfigurations -o name | grep istio)
    kubectl delete --now --timeout=10s \
            $(kubectl get mutatingwebhookconfigurations -o name | grep istio)
}
# --

function delete_istio() {
    lokoctl component delete experimental-istio-operator --delete-namespace --confirm
    [ $? -ne 0 ] && {
        # this sometimes fails with a namespace error, works the 2nd time
        sleep 5
        lokoctl component delete experimental-istio-operator --delete-namespace --confirm; }

    grace "kubectl get namespaces | grep istio-operator" 1
    kubectl delete namespace istio-system  --now --timeout=30s
    for i in $(seq 20); do
        istio_extra_cleanup
        kubectl get namespaces | grep istio-system || break
        sleep 1
    done
}
# --

function run_benchmarks() {
    for rps in 500 1000 1500 2000 2500 3000 3500 4000 4500 5000 5500; do
        for repeat in 1 2 3 4 5; do

            echo "########## Run #$repeat w/ $rps RPS"

            echo " +++ bare metal benchmark"
            install_emojivoto bare-metal
            run_bench bare-metal $rps
            delete_emojivoto

            echo " +++ linkerd benchmark"
            echo "Installing linkerd"
            lokoctl component apply experimental-linkerd
            [ $? -ne 0 ] && {
                # this sometimes fails with a namespace error, works the 2nd time
                sleep 5
                lokoctl component apply experimental-linkerd; }

            grace "kubectl get pods --all-namespaces | grep linkerd | grep -v Running"

            install_emojivoto linkerd
            run_bench linkerd $rps
            delete_emojivoto

            echo "Removing linkerd"
            lokoctl component delete experimental-linkerd --delete-namespace --confirm
            kubectl delete namespace linkerd --now --timeout=30s
            grace "kubectl get namespaces | grep linkerd"

            echo " +++ istio benchmark"
            echo "Installing istio"
            lokoctl component apply experimental-istio-operator
            grace "kubectl get pods --all-namespaces | grep istio-operator | grep -v Running"
            sleep 30    # extra sleep to let istio initialise. Sidecar injection will
                        #  fail otherwise.

            install_emojivoto istio
            while true; do
                check_meshed "emojivoto-" && {
                    echo "  ++ Emojivoto is fully meshed."
                    break; }
                echo " !!! Emojivoto is not fully meshed."
                echo "     Deleting and re-deploying Istio."
                delete_istio
                lokoctl component apply experimental-istio-operator
                grace "kubectl get pods --all-namespaces | grep istio-operator | grep -v Running"
                sleep 30
                echo " !!!  Restarting all Emojivoto pods."
                restart_emojivoto_pods
            done
            run_bench istio $rps
            delete_emojivoto

            echo "Removing istio"
            delete_istio
        done
    done
}

function execute_benchmarks(){
    # Cleanse the system of all SMTs
    uninstall_all_smt

    # Ensure Prometheus is running
    kubectl apply -f ../PrometheusService/

    # Deploy Controller to store results
    deploy_benchmark_controller
    
	# Run Benchmarks
	benchmark_bare_kubernetes
    #benchmark_istio
    #benchmark_linkerd
    #benchmark_consul

    }
# --

if [ "$(basename $0)" = "run_benchmarks.sh" ] ; then
    execute_benchmarks $@
fi