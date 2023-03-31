# Readme

This application is a benchmark that simulates microservice applications of different scales communicating with each other.
To help visualise this, multiple architecture diagrams have been included in the dissertation pdf.

The benchmark allows us to define applications with different numbers of simultaneous users, requests per user and microservices. The benchmark then deploys the application, submits a load of the established size and records the latency of the system and its resource utilisation.

This is how the application works:
* `BenchmarkController/` starts the benchmark, determines its parameters (users, requests per user and microservices) and at the end of the run stores its results in a zip file.
* `RequestGenerator/` on BenchmarkController's signal it starts sending loads of different sizes to the Counter applications, recording the response latency and resource utilisation.
* `MicroCounterA/` and `MicroCounterB/` send requests to each other according to the counter value defined in the request from the RequestGenerator. This way we can simulate multiple different microservices communicating with each other.
* `PrometheusService/` this part of the application records resource utilisation using Prometheus, Node Exporter and Cadvisor. The request generator will pull usage metrics from here.

For our experiment we need to test applications of the same scale when meshed with different service meshes. Therefore we created a pipeline that does this. 
* `Jobs/run_benchmarks.sh` and `Jobs/run_benchmarks_consul.sh` will deploy the different microservices above, mesh them with a specific mesh and instruct the BenchmarkController to run the benchmark, downloading the results from the cluster at the end.

The `Jobs/` directory also includes different useful scripts such as `create_docker_images.sh` to containerise all the microservices automatically.


## Build instructions

### Requirements

Required Equipment:

* Linux Server with Ubuntu distribution (We used OnLogic Helix 600 edge server)

Required Software:
* Ubuntu (We used Ubuntu 20.04)
* Docker (We used Docker version 20.10.12.)
* Kubernetes in Docker distribution (We used Kind v0.17.0)
* kubectl (https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/)
* istio cli (https://istio.io/latest/docs/setup/getting-started/)
* linkerd cli (https://linkerd.io/2.12/getting-started/)
* consul-k8 cli (https://developer.hashicorp.com/consul/docs/k8s/installation/install-cli)

If struggling to install Kubernetes please refer to the file `InstallKubernetesToServer.txt`. Please note that installing Kubernetes on different machines can be a complicated task, and that file only specifies the commands we executed to get it working on the OnLogic Helix 600 edge server. We cannot guarantee that setup will also work for your device and it is why it is not included in our `readme.md`.

### Build steps
This section assumes all the equipment stated above has succesfully been set up and installed.

To build the Software you first need to ensure that docker is running:
`sudo systemctl start docker`
`sudo systemctl status docker`

Then you must create a kubernetes cluster (This is only needed the first time you run the project)
`sudo kind create cluster`

Then you need to navigate to the Jobs folder where our setup scripts are
`cd Jobs/`

Here you must create the docker images
`sudo bash create_docker_images.sh/`

Now the application is ready and you can run the benchmarks
* To run the Kubernetes, Linkerd and Istio benchmark: `bash run_benchmark.sh/`
* To run the Consul, Kubernetes, Linkerd and Istio benchmark: `bash run_benchmarks_consul.sh/`

### Test steps

To verify that the project is working as intended you need to execute the benchmark

In `src/Jobs/` run `bash run_benchmarks.sh/` OR `bash run_benchmarks_consul.sh/`

The benchmark script should execute and download the results to a folder `/src/Jobs/results`.
To analyse those results please copy them and refer to the `readme.md` in `\data\`.

To check on the health of the benchmark as it runs you can check 
A) That the pods are running `kubectl get pods`
B) That the pods are doing what they are intended to do `kubectl logs request-generator-{pod_number} -c RequestGenerator` should print which batch is currently running.
