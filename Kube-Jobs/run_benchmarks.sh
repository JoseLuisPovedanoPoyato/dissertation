#!/bin/bash

script_location="$(dirname "${BASH_SOURCE[0]}")"

# Request Generator Commands
function deploy_request_generator(){
	echo "Deploying the request generator..."
	kubectl create -f ${script_location}/../ApacheTimeRecording/request_gen_manifest.yml
    grace "kubectl get pods --all-namespaces | grep request-generator | grep -v Running" 5
	echo "... Request generator is live and running"
}

function run_send_request_job() {
	local smt="$1"
    echo "Finding request generator pod..."
	local req_pod=$(kubectl get pod -l app=request-generator -o jsonpath="{.items[0].metadata.name}")
	echo "Request pod is sending the request..."
    local data='{"smt":"'"$smt"'"}'
    kubectl exec $req_pod -- curl -X POST http://localhost:5000/send_requests -H "Content-Type: application/json" -d "$data"
    echo "... Bare Kubernetes Micro Counter has been deleted"
}

# Linkerd Installation Commands
function install_linkerd_cluster() {
	linkerd check --pre
	linkerd install --crds | kubectl apply -f -
    sleep 5
    linkerd install | kubectl apply -f -
	sleep 5
    linkerd check
}

function uninstall_linkerd_cluster() {
	linkerd uninstall | kubectl delete -f -
}

# Consul Installation Commands
function install_consul() {
	curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
	sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
	sudo apt-get update && sudo apt-get install consul-k8s
	consul-k8s version
	consul-k8s install 
	consul-k8s status
}

function uninstall_consul() {
	linkerd uninstall | kubectl delete -f -
}

# MicroCounter Deployment Commands
function deploy_counter_bare() {
    echo "Deploying a version of MicroCounter without any SMTs..."
	kubectl create -f ${script_location}/../MicroCounter/bare_counter_manifest.yml
    grace "kubectl get pods --all-namespaces | grep micro-counter-deployment | grep -v Running" 5
    # This needs fixing doesn't work for services
    # grace "kubectl get services --all-namespaces | grep micro-counter-service | grep -v Running" 10
	echo "... Bare Kubernetes Micro Counter is live"
}

function delete_counter_bare() {
    echo "Deleting bare micro-counter-deployment"
	kubectl delete deployments/micro-counter-deployment
	kubectl delete services/micro-counter-service
	echo "... Bare Kubernetes Micro Counter has been deleted"
}

function deploy_counter_linkerd() {
    echo "Generating MicroCounter manifest with linkerd injections..."
    linkerd inject ${script_location}/../MicroCounter/bare_counter_manifest.yml > ${script_location}/../MicroCounter/linkerd_counter_manifest.yml
    echo "Deploying a version of MicroCounter that uses the linkerd SMT..."
	kubectl create -f ${script_location}/../MicroCounter/linkerd_counter_manifest.yml
    grace "kubectl get pods --all-namespaces | grep micro-counter-deployment | grep -v Running" 5
    # Won-t work for services
    # grace "kubectl get services --all-namespaces | grep micro-counter-service | grep -v Running" 10
	echo "... Linkerd Kubernetes Micro Counter is live"
}

function delete_counter_linkerd() {
    echo "Deleting linkerd micro-counter-deployment"
	kubectl delete deployments/micro-counter-deployment
	kubectl delete services/micro-counter-service
	echo "... Linkerd Kubernetes Micro Counter has been deleted"
}

function run_bare(){
    deploy_counter_bare
	run_send_request_job "kubernetes"
	delete_counter_bare	
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

function install_counter() {
    local mesh="$1"

    echo "Installing Counter MicroService."

    for num in $(seq 0 1 59); do
        { 
            kubectl create namespace emojivoto-$num
            [ "$mesh" == "istio" ] && \
                kubectl label namespace emojivoto-$num istio-injection=enabled

            helm install emojivoto-$num --namespace emojivoto-$num \
                             ${script_location}/../configs/emojivoto/
         } &
    done

    wait

    grace "kubectl get pods --all-namespaces | grep emojivoto | grep -v Running" 10
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

function delete_counter() {
    echo "Deleting emojivoto."

    for i in $(seq 0 1 59); do
        { helm uninstall emojivoto-$i --namespace emojivoto-$i;
          kubectl delete namespace emojivoto-$i --wait; } &
    done

    wait

    grace "kubectl get namespaces | grep emojivoto"
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
	deploy_request_generator
    
	# Bare Benchmark Section
	run_bare

	# Linkerd Benchmark Section
    install_linkerd_cluster
	deploy_counter_linkerd
	run_send_request_job "linkerd"
	delete_counter_linkerd
	uninstall_linkerd_cluster
	
    # Istio Benchmark Section
}
# --

if [ "$(basename $0)" = "run_benchmarks.sh" ] ; then
    execute_benchmarks $@
fi