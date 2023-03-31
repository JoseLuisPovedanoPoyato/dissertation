# User manual 

This section explains how to run the benchmark. This section assumes you have already built the application as detailed in the readme.md.
If this is not the case, please do this now.

## Execute the benchmarks
To execute the benchmark first navigate to the Jobs Directory
`cd Jobs/`

Here you can run the Kubernetes, Linkerd and Istio version of the benchmark (`bash run_benchmarks.sh/`) or the version that also includes Consul (`bash run_benchmarks_consul.sh/`)

The benchmark script will first 
* Deploy the prometheus monitoring system to Kubernetes
* Deploy the Benchmark Controller
* For Istio, Linkerd and Kubernetes it will:
    * Install the mesh into your Kubernetes cluster (if applicable) (Using the CLIs listed in Required Equipment)
    * Deploy the request generator
    * Deploy the Microcounter-A and MicroCounter-B
    * Then it will check on the health of the system and ensure all services are running
    * It will ssh into the benchmark controller and start a run
    * At this point you will see a curl request, this means that the system is working. This section can take a while.
    * After the response is received the cluster will delete the Counter, the request generator and uninstall the mesh(if applicable) and move on to the next mesh
* At the end of the run the system will download a zip folder for Kubernetes and each mesh, specifying the date and time of the run and containing its results `cd results/; ls`

These results can then be downloaded from the server where you are running the experiment and analysed in the `../results/processed/diss-results/` and `../results/processed/diss-results-consul/` directories. Please refer to the `readme.md` in `../results/` for more information.

## Change the benchmark parameters
To change the number of parameters the benchmark tests with please navigate to:
`BenchmarkController/controller.py`

Here you can change the number of microservices to test with, the number of requests per user and the number of simultaneous users.
Please note that very high values can crash your server. We used the following values:

* Normal Benchmark:
    * CONCURRENT_USERS=[100, 200, 400, 600, 800]
    * REQUESTS_PER_USER = [3, 5, 10]
    * SERVICES_PER_REQ = [10, 20, 40, 60, 80]

* Consul Benchmark:
    * CONCURRENT_USERS = [100, 200]
    * REQUESTS_PER_USER = [3, 5, 10]
    * SERVICES_PER_REQ = [10, 20, 40]

After changing these values, rebuild the docker images (`sudo bash create_docker_images.sh`) and run the desired benchmark.

