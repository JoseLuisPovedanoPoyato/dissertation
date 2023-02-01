#!/bin/bash

# This is a script to "simulate" continuous integration
# When certain components change, their docker images are automatically updated
# When Prometheus config changes Prometheus is automatically updated

# Source create_docker file
. create_docker_images.sh

# Fetch the latest changes from repo
git pull origin main

# Check for changes to app code or docker files and update docker images
# If MicroCounter DockerFiles or Python Files have changed
if git diff HEAD^ HEAD --name-only | grep -E "(Dockerfile|\.py)" | grep "MicroCounter/" > /dev/null
then
  create_micro_counter_img
else
  echo "No Updates to MicroCounter Docker or Python"
fi
# Check if BenchmarkController DockerFiles or Python Files have changed
if git diff HEAD^ HEAD --name-only | grep -E "(Dockerfile|\.py)" | grep "BenchmarkController/" > /dev/null
then
  create_benchmark_controller_img
else
  echo "No Updates to BenchmarkController Docker or Python"
fi
# Check if RequestGenerator DockerFiles or Python Files have changed
if git diff HEAD^ HEAD --name-only | grep -E "(Dockerfile|\.py)" | grep "RequestGenerator/" > /dev/null
then
  create_request_generator_img
else
  echo "No Updates to RequestGenerator Docker or Python"
fi

# Check for Prometheus updates
if git diff HEAD^ HEAD --name-only | grep ".yaml" | grep "PrometheusService/" > /dev/null
then
  kubectl apply -f ../PrometheusService/
else
  echo "No Updates to Prometheus Service"
fi