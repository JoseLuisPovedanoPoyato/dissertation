# User manual 

This section explains how to run the benchmark. This section assumes you have already built the application as detailed in the readme.md.
If this is not the case, please do this now.

To execute the benchmark first navigate to the Jobs Directory
`cd Jobs/`

Here you can run the Kubernetes, Linkerd and Istio version of the benchmark or the version that also includes Consul
`bash run_benchmark.sh/`
`bash run_benchmark_consul.sh/`

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

These results can then be downloaded and analysed on the  `src/diss-results/` and `src/diss-results-consul/` directory.

