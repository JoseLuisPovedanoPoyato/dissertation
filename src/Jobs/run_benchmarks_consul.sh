#!/bin/bash


script_location="$(dirname "${BASH_SOURCE[0]}")"

source run_benchmarks.sh

function execute_benchmarks(){
    # Cleanse the system of all SMTs
    kubectl delete deployment request-generator
    delete_counter
    uninstall_all_smt

    # Ensure resources are capped so it doesn't crash
    # kubectl apply -f ../ResourceQuota.yaml

    # Ensure Prometheus is running
    kubectl apply -f ../PrometheusService/
    kubectl apply -k ../PrometheusService/cadvisor/

    benchmark_consul
    sleep 60
    
    # Deploy Controller to store results
    deploy_benchmark_controller
    
	# Run Benchmarks
	benchmark_bare_kubernetes
    sleep 10
    
    benchmark_istio
    sleep 60

    benchmark_linkerd
    sleep 60
    }
# --

if [ "$(basename $0)" = "run_benchmarks_consul.sh" ] ; then
    execute_benchmarks $@
fi