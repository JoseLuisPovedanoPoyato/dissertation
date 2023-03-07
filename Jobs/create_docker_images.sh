#!/bin/bash

function create_request_generator_img(){
	docker rmi requestgenerator:1.0
	docker build ../RequestGenerator/ -t requestgenerator:1.0 -f ../RequestGenerator/Dockerfile
	kind load docker-image requestgenerator:1.0
	kubectl delete deployments request-generator
}

function create_benchmark_controller_img(){
	docker rmi benchmarkcontroller:1.0
	docker build ../BenchmarkController/ -t benchmarkcontroller:1.0 -f ../BenchmarkController/Dockerfile
	kind load docker-image benchmarkcontroller:1.0
	kubectl delete deployments benchmark-controller
}

function create_micro_counter_img(){
	docker rmi microcounter:1.0
	docker build ../MicroCounter/ -t microcounter:1.0 -f ../MicroCounter/Dockerfile
	kind load docker-image microcounter:1.0
	kubectl delete deployments micro-counter
}

function create_micro_counter_B_img(){
	docker rmi microcounter_b:1.0
	docker build ../MicroCounter/ -t microcounter_b:1.0 -f ../MicroCounter/Dockerfile
	kind load docker-image microcounter_b:1.0
	kubectl delete deployments micro-counter-b
}

function create_micro_counter_A_img(){
	docker rmi microcounter_a:1.0
	docker build ../MicroCounter/ -t microcounter_a:1.0 -f ../MicroCounter/Dockerfile
	kind load docker-image microcounter_a:1.0
	kubectl delete deployments micro-counter-a
}

function create_docker_images(){
	create_request_generator_img
	create_benchmark_controller_img
	create_micro_counter_img
	create_micro_counter_A_img
	create_micro_counter_B_img
}
# --

if [ "$(basename $0)" = "create_docker_images.sh" ] ; then
	create_docker_images
fi