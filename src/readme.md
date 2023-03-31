# Readme

Put a brief description of your code here. This should at least describe the file structure.

## Build instructions

**You must** include the instructions necessary to build and deploy this project successfully. If appropriate, also include 
instructions to run automated tests. 

### Requirements

Required Equipment:

* Linux Server with Ubuntu distribution (We used OnLogic Helix 600 edge server)
* Ubuntu (We used Ubuntu 20.04)
* Docker (We used Docker version 20.10.12.)
* Kubernetes in Docker distribution (We used Kind v0.17.0)
* Kubectl ()
* Istio CLI ()
* Linkerd CLI ()
* Consul CLI ()

### Build steps

To build the Software you first need to ensure that docker is running:
`sudo systemctl start docker`
`sudo systemctl status docker`

Then you must create a kubernetes cluster (This is only needed the first time you run the project)
`sudo kind create cluster`

Then you need to navigate to the Jobs folder where our setup scripts are
`cd Jobs/`

Here you must create the docker images
`sudo bash create_docker_images.sh/`

Finally you can run the benchmark using the following
`bash run_benchmark_dup_services.sh/`

### Test steps

To verify that the project is working as intended you need to execute the benchmark
`cd Jobs/`
`bash run_benchmarks.sh/`

The benchmark script will first 
* Deploy the prometheus monitoring system to Kubernetes
* Deploy the Benchmark Controller
* For Istio, Linkerd and Kubernetes it will:
    * Install the mesh into your Kubernetes cluster (if applicable) (Using the CLIs listed in Required Equipment)
    * Deploy the request generator
    * Deploy the Microcounter-A and MicroCounter-B
    * Then it will check on the health of the system and ensure all services are running
    * It will ssh into the benchmark controller and start a run
    * At this point you will see a curl request, this means that the system is working
    * After the response is received the cluster will delete the Counter, the request generator and uninstall the mesh(if applicable) and move on to the next mesh
* At the end of the run the system will download a zip folder for Kubernetes and each mesh, specifying the date and time of the run and containing its results `cd results/; ls`
