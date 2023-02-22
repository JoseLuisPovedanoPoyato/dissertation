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

function delete_benchmark_controller(){
	echo "Deleting the benchmark controller..."
	kubectl delete -f ${script_location}/../BenchmarkController/benchmark_controller_manifest.yml
}

function run_send_request_job() {
	local smt="$1"
    echo "Finding benchmark controller pod..."
	local req_pod=$(kubectl get pod -l app=benchmark-controller -o jsonpath="{.items[0].metadata.name}")
	echo "Benchmark Controller is sending the request..."
    local data='{"smt":"'"$smt"'"}'
    kubectl get pods # Print pods right before sending request to ensure everything is live at this point
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
    grace "kubectl get pods --all-namespaces | grep micro-counter | grep -v Running" 120
    # This needs fixing doesn't work for services
    # grace "kubectl get services --all-namespaces | grep micro-counter-service | grep -v Running" 10
}

function delete_counter(){
	kubectl delete deployments/micro-counter
	kubectl delete services/micro-counter-service
    kubectl delete -f ${script_location}/../MicroCounter/bare_counter_manifest.yml
    while true; do
        if kubectl get pods -l 'app=micro-counter' | grep -q 'micro-counter'; then
            echo "Some micro-counter pods are still running..."
            sleep 10
        else
            echo "Micro-counter has been succesfully terminated"
            break
        fi
    done
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
	echo "... Istio Injected Micro Counter has been deleted"
}

function deploy_counter_consul() {
    echo "Deploying MicroCounter using a consul injected manifest..."
	deploy_counter ${script_location}/../MicroCounter/bare_counter_manifest.yml
    echo "... Consul Injected Micro Counter is live"
}

function delete_counter_consul() {
    echo "Deleting consul micro-counter-deployment"
	delete_counter
	echo "... Consul Injected Micro Counter has been deleted"
}

# Execute a benchmark for each SMT
function benchmark_bare_kubernetes(){
    deploy_request_generator
    deploy_counter_bare
	run_send_request_job "kubernetes"
	delete_counter_bare	
    delete_request_generator
}

function benchmark_linkerd(){
    install_linkerd_cluster
    sleep 60
    deploy_request_generator
	deploy_counter_linkerd
	run_send_request_job "linkerd"
	delete_counter_linkerd
    delete_request_generator
	uninstall_linkerd_cluster
    sleep 30
}

function benchmark_istio(){
    install_istio_cluster
    sleep 60
    deploy_request_generator
	deploy_counter_istio
	run_send_request_job "istio"
	sleep 10
    delete_counter_istio
    delete_request_generator
	uninstall_istio_cluster
    sleep 30
}

function benchmark_consul(){
    echo "Consul does not permit external communication from services outside the mesh, therefore we are deleting the benchmark controller and redeploying it after the mesh installs"
    delete_benchmark_controller
    install_consul_cluster
    sleep 30
    deploy_benchmark_controller
	deploy_counter_consul
    deploy_request_generator
	run_send_request_job "consul"
	#delete_counter_consul
    #delete_request_generator
    #delete_benchmark_controller
	#uninstall_consul_cluster
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

function execute_benchmarks(){
    # Cleanse the system of all SMTs
    uninstall_all_smt

    # Ensure Prometheus is running
    kubectl apply -f ../PrometheusService/

    # Deploy Controller to store results
    deploy_benchmark_controller
    
	# Run Benchmarks
	benchmark_bare_kubernetes
    sleep 120

    benchmark_linkerd
    sleep 120

    benchmark_istio
    sleep 120

    benchmark_consul
    }
# --

if [ "$(basename $0)" = "run_benchmarks.sh" ] ; then
    execute_benchmarks $@
fi