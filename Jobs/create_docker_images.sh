#!/bin/bash

function create_request_generator(){
	docker rmi requestgenerator:1.0
	docker build . -t requestgenerator:1.0 -f ../RequestGenerator/Dockerfile
	kind load docker-image requestgenerator:1.0
}

function create_request_generator(){
	docker rmi requestgenerator:1.0
	docker build . -t requestgenerator:1.0 -f ../BenchmarkController/Dockerfile
	kind load docker-image requestgenerator:1.0
}

function create_docker_images(){
	create_request_generator
	create_benchmark_controller
}
# --

if [ "$(basename $0)" = "create_docker_images.sh" ] ; then
	create_docker_images
fi