#!/bin/bash

function create_request_generator(){
	docker rmi requestgenerator:1.0
	docker build ../RequestGenerator/ -t requestgenerator:1.0 -f ../RequestGenerator/Dockerfile
	kind load docker-image requestgenerator:1.0
	kubectl delete deployments request-generator
	kubectl create -f ../RequestGenerator/request_gen_manifest.yml
}

function create_benchmark_controller(){
	docker rmi benchmarkcontroller:1.0
	docker build ../BenchmarkController/ -t benchmarkcontroller:1.0 -f ../BenchmarkController/Dockerfile
	kind load docker-image benchmarkcontroller:1.0
}

function create_docker_images(){
	create_request_generator
	#create_benchmark_controller
}
# --

if [ "$(basename $0)" = "create_docker_images.sh" ] ; then
	create_docker_images
fi