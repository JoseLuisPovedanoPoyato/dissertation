# Timelog

* PROJECT NAME
* Jose Luis Povedano Poyato
* 2403203P
* Yehia Elkhatib

## Guidance

* This file contains the time log for your project. It will be submitted along with your final dissertation.
* **YOU MUST KEEP THIS UP TO DATE AND UNDER VERSION CONTROL.**
* This timelog should be filled out honestly, regularly (daily) and accurately. It is for *your* benefit.
* Follow the structure provided, grouping time by weeks.  Quantise time to the half hour.

## Week 1

### 28 Sept 2022
* * 0 hours * Received project from project bids
* * 2 hours * Read requirements for Project assessment in MSci Placement and took notes

### 29 Sept 2022
* *1.5 hours* Investigating what Service Mesh Technologies are and taking notes on individual ones
* *0.5 hours * 1st Meeting with supervisor 

### 30 Sept 2022
* * 1 hour* Research Mesh Technologies, found 2020 book on Istio Linkerd and Consul, write up notes in sources word
* * 0.5 hours * Look into Kubernetes - Took notes on what it is and how it works - Nodes, pods, controllers and services - 0.5hrs
* * 0.5 hours*Installed Docker in personal windows laptop (Change BIOS settings, install Linux Kernel for WSL2, Install Docker Desktop, Debug Issues with install)

(Ask Yehia about lab resources to match what will be used later on)

### 01 Oct 2022
* * 1 hour * Make space in laptop, Install Kubernetes in Docker (KinD install), Enable Kubernetes in Docker, Install Chocolatey, choco install kubernetes-cli, choco install kind
* * 0.5 hours * Found "good" tutorial on Rest API Microservice
* * 0.5 hours * Started creating microservice

### 03 Oct 2022
* * 0.5 hours * Basic microservice runs locally, does not work on Docker

### 04 Oct 2022
* * 0.5 hours * Basic microservice runs on Docker
* * 0.5 hours * Start working on a new microservice to communicate with existing one

### 06 Oct 2022
* * 1.5 hours * Created 2 microservices that communicate when running locally, do not communicate in Docker
* * 0.5 hours * Created Github for dissertation, added all data so far
* * 0.5 hours * 2nd Meeting with Supervisor

### 07 Oct 2022
* * 0.5 hours * Investigation: For Docker containers to communicate they must be in the same Network, time to set up Kubernetes Cluster
* * 0.5 hours * Created kubernetes container and pod, cannot access services from localhost though
* * 0.5 hours * Created kubernetes service for receiver, still cannot access service from localhost
* * 0.5 hours * Research whether port is not being exposed or something else is failing, api can be seen running on container's logs

### 11 Oct 2022
* * 1 hour * Expanded Notes from book and checked credited sources + found interesting book in library about deploying Istio service 
* * 0.5 hours * Updated Kubernetes notes, considering changing kubernetes distribution

### 12 Oct 2022
* * 0.5 hour * Expanded kubernetes notes
* * 1.5 hour * Implemented NodePort service type, receiver and sender deploy to kubernetes cluster, can access them from inside their respective pods but can´t communicate externally or with each other
* * 2 hours * Researched current existing benchmarks to compare SMTs

### 13 Oct 2022
* * 2.5 hours * Solved problem with Clusters, implemented services, they now can contact each other as long as they know each other's IP and Port Number
* * 0.5 hours * 3rd Meeting with supervisor 

### 17 Oct 2022
* * 0.5 hour * Selected Objectives for dissertation

### 18 Oct 2022
* * 1 hour * Researched paper that implemented etcd on bare kubernetes and basic Istio, had very good explanation diagrams on Istio SMTs architecture vs bare
* * 0.5 hour * Basic microservice counter api to enable multiple deployments of same api and create loop of comms between them

## 19 Oct 2022
* * 1.5 hours * Installed Postman, finished and debugged microcounter api, it works locally
* * 1 hour * Researched kubernetes bare DNS - https://dev.to/narasimha1997/communication-between-microservices-in-a-kubernetes-cluster-1n41

## 20 Oct 2022
* * 1 hour * Services communicate via DNS inside kubernetes in docker distribution. This works fine and sender -> receiver works

## 23 Oct 2022
* * 1.5 hours * Created Architecture displaying how previous benchmarks worked, made proposing of my own and highlighted differences
* * 0.5 hours * Installing Istio -> Does not work on Windows with WSL2
* * 1 hour * Installed Ubuntu into WSL and set it up -> Kubernetes in Docker does not work

## 24 Oct 2022
* * 0.5 hour * 4th Meeting with superisor
* * 1 hour * Install Docker and Kube into ubuntu local version on wsl try and get them to work -> Docker not starting without running on main machine, WSL is secondary machine, cannot access main

## 25 Oct 2022
* * 1 hour * Logged onto Yehia's Server, installed docker and kubernetes and cloned project, docker works, kubectl gives errors -> Might need to set up kubernetes contexts

## 28 Oct 2022
* * 1 hour * Kubernetes distribution was not creating config for kubectl so kubectl did not know what kubernetes cluster to communicate with, manually created config
* * 0.5 hours * Kubernetes now creates deployments in cluster, however, pod is failing to pull image from docker -> Probably need to configure permissions?

## 30 Oct 2022
* * 0.5 hours * Updated objectives

## 03 November 2022 
* * 0.5 hours * Kubernetes was trying to pull image from online repo instead of sourcing it locally
* * 0.5 hours * kubernetes image was not being loaded automatically into pod when built unlike windows
* * 0.5 hours * Kubernetes image load was failing because kubernetes did not have permissions to interact with docker
* * 0 hours * Server now works like it did on windows distribution -> Onto Istio
* * 0.5 hours * 5th Meeting with supervisor

## 05 November 2022
* * 0.5 hours * Investigated potential limitations from previous benchmarks
* * 1 hour * Worked on experiment proposal, planned features to distinguish ourselves from previous benchmarks
 
## 06 November 2022
It was my birthday

## 08 November 2022
* * 1 hour * Created experiment proposal, with architecture and proposed technologies

## 10 November 2022
* * 1.5 hours * Installed Istio control plane for default version (Could not use Demo because Istio team reached out and complained to other benchmark about them using demo as it has limited capabilities)
* * 0.5 hours * 6th Meeting with supervisor

## 17 November 2022
* * 0.5 hours * Looked at Apache AB and checked it works for our objectives
* * 0.5 hours * 7th Meeting with supervisor - Had lots of uni work from other courses this week and did not have any progress

## 19 November 2022
* * 0.5 hour * Instead of getting sender and receiver working for every SMT and then implement experiment, get experiment working on base kubernetes (less total work, though harder to start)
* * 0.5 hour * Started looking into pods replicas and investigating how services would work.

## 23 November
* * 1 hour * Finished project dissertation report draft - Submitted to Yehia for feedback

## 24 November 2022
* * 0.5 hours * 8th Meeting with supervisor

## 30 November 2022
* * 0.5 hours * Kept working on replicas, docker is failing locally
* * 1 hour * Tried to debug local version of docker, not working, moving on to build on Server because I do not want to waste more time on this

## 01 December 2022
* * 0.5 hours * Image builds in docker on server
* * 0.5 hours * Image deploys to kubernetes with multiple replica pods and services
* * 1 hour * Learned how kubernetes load balancing works from service to replicas, they will ping the same replica until that one is full then move to the next one

## 02 December 2022
* * 1 hour * MicroCounter works on server - Need to test with apache ab to check loop
* * 0.5 hours * Image deploys to kubernetes with multiple replica pods and services
* * 0.5 hours * 9th meeting with Yehia

## 05 December 2022
* * 1.5 hours * Apache ab tested on kube pod, microcounter works and times requests 
		- To investigate: Ensure all pods are pinged and not just 1
* * 1.5 hours * Started automatising ab into its own pod that will send requests from list of requests and record them into file

## 08 December 2022
* * 0.5 hours * 10th Meeting with Yehia

## 13 December 2022
* * 1 hour * Created sample requests, created python script that iterates over them, runs ab from command line and extracts data
	- Still need to choose what of this data I want to record 
* * 2.5 hours * Debugged python script so it worked on docker and it deploys to kubernetes 
* * 0.5 hours * Updated project status with Yehia's Feedback

## 14 December 2022
* * 0.5 hours * 11th meeting with Yehia -> Will meet again after Christmas

## 16 December 2022
* * 0.5 hours * Finishing touches to Status Report and submitted it

## 17 December 2022
* * 1 hour * Researched Prometheus, worked on ClusterRoles and ClusterRoleBinding to monitoring namespace
	- Prometheus is more complicated than expected

## 20 December 2022
* * 1 hour * Kept trying to set up Prometheus -> Lots of stuff I don't understand
* * 1.5 hours * Instead found pre-made Prometheus template -> Deploying that -> Adapt to match what I need
	- Problem1: Cannot SSH into container to access logs
		- Potential WorkAround: Deploy other service to same namespace and ping it from there (This won't work, problem is with pinging)
	- Problem2: Not sure how metrics are defined to be store, or how to query them
		WorkAround: Look into rules and prometheus.yaml (Yehia said metrics can be sent to a separate pod)
* * 1.5 hours * Test ExternalName in DNS for monitoring namespace from default namespace
	- ExternalNames works we can communicate accros namespaces
	- Problem: When trying to query prometheus, even from same namespace, requests hang and never return anything
* * 0.5 hours * Updated experiment description and diagrams
* * 0.5 hours * Updated apache timelog to select more values and formated data storage
 
 
## 21 December 2022
* * 1.5 hour * Created controller to store timelog values over multiple different uploads of SMTs

## 22 December 2022
* * 3 hours * Controller works, will run multiple version of apache ab with different concurrencies, number of requests and num of microservices
	- To Do: Increase apache ab timeout
	- To Do: Read logs from stderror as well to facilitate future debugging
	
## 23 December 2022
* * 0.5 hours * Increased timeout and output error logs
* * 0.5 hours * All requests are send and they are recorded
	- Problem1: Takes 2 hours to run everything
	- Probelm2: Results are not what we expected them to be (I think app is overloaded so a lot of requests timeout, return 500 and we don't try again)
	- Problem3: Some of the microcounter-service/count requests time out which could make certain systems average faster values than what they should get


## 24 December 2022
* * 0.5 hours * Shortened requests for testing, added system to retry if request status is not 200
	- Problem: Higher concurrency is still faster, not sure why
* * 1 hour * Researched Flask -> Flask by default uses threads for every request
	- 1 Flask thread might not benefit from the all the extra resources (RAM/CPU), however extra threads might, this would explain why time per request is lower when using concurrent apps
		- I.E. 1 request executes in 50ms, 10 requests execute in 250ms -> Time per request is 50ms vs 25ms
* * 0.5 hour * Set Flask to single threading, running over night to check if theory is correct and time per request is now similar through all requests
	- This is extremely slow, and single requests would take minutes
	
## 25 December 2022
* * 0.5 hours * Resetted normal requests to test the application
* * 0.5 hours * Removed single threading as app becomes extremely slow and times output

## 26 December 2022
* * 1.5 hour * Working on automating the creation and deletion of pods to switch SMTs in and out
* * 0 hours * Having errors connecting to glasgow uni vpn and SSHing into servers, could not pull automation changes in...

## 28 December 2022
* * 1 hour * Started implementing the linkerd SMTs

## 30 December 2022
* * 0.5 hours * Kept implementing Linkerd smt until it does not execute locally because of windows compatibility problems
* * 1 hour * Trying to solve localy compatibility problems (Failed does not work)
* * 0.5 hours * Automating Linkerd commands (Due to Server problems haven't managed to run them yet)

## 02 January 2023
* * 1.5 hours * Tried to solve problems with WSL and Docker (Not working)
* * 1 hour * Automated Linkerd commands

## 03 January 2023
* * 2 hours * Tried to solve problems with WSL and Docker (Not working)
* * 1 hour * Started writing dissertation -> Got template and read examples
* * 0.5 hour * Started automating some consul commands

## 04 January 2023
* * 2.5 hours * Tried to use a remote server instead (Not working because paywall)
* * 1 hour * Structured background segments and methodology

## 05 January 2023
* * 2.5 hours * Tried setting up VirtualBox with Ubuntu, Debian and Redhat
	- Does not work -> Docker virtualization has broken VMs

## 06 January 2023
* * 1.5 hours * Wrote some of the dissertation background
* * 1 hour * Wrote some of the dissertation methodology

## 07 January 2023
* * 2 hours * Tried to get a new Prometheus deployment working in Windows (Issues with WSL, kind and docker)

## 09 January 2023
* * X hours * Saved all my important stuff to another device and factory resetted my laptop to try and get Virtual Machines working

## 10 January 2023
* * 1 hour * Set up Ubuntu virtual machine in virtual box
* * 2 hours * Setting up Docker, Kind and Kubectl in VM (Seems to be working)
- Yehia Restarted Server
* * 5 hours * Automated script works -> We collect latency results for bare kubernetes and linkerd
	- Problem: Linkerd install needs a wait period between installs before we try injecting linkerd into pods
	- Problem: Still need debug Prometheus
	- Problem: Code is quite messy -> Try to make time for refactoring AFTER gathering results for writing diss
	- Problem: Only 1 set of results stored into dict with results

## 11 Jannuary 2023
* * 0.5 hours *  Solving probelms found yesterday

## 13 January 2023
* * 0.5 hours * Meeting with Supervisor -> Currently on track, focusing on getting the SMTs working then fixing prometheus

## 14 January 2023
* * 1 hours * Set up commands to run Istio benchmark, need to execute a complete batch to test it worked

## 15 January 2023
* * 0.5 hours * Istio works, Debugging small errors and starting work on Consul

## 16 January 2023
* * 0.5 hours * Updated small errors, Linkerd and Istio now run continuously

## 17 January 2023
* * 1 hour * Tested Consul run -> Does not work -> Pods outside of Consul mesh cannot communicate with meshed pods

## 18 January 2023
* * 0.5 hour * Researching how unmeshed pods communicate with meshed pods to solve Consul problem
	- Research: SM is essentially a new network inside the cluster, Linkerd and Istio have mechanism for external pods to communicate with mesh, Consul doesn't 
	- Solution_1: Add Ingress Controller so external pod can send request to internal
		- Problem: Unfair comparison -> Additional controller runs for consul OR unnecessary controller runs for everyone else 
	- Solution_2: Redeploy load generator for each SMT 
		- Problem: We would lose the results stored in the pod when changing SMTs as would have to delete generator
* * 0.5 hours * Re-assessed current architecure and found additional problem
	- Problem: For all SMTs Load Generator requests have to break into mesh everytime, while bare kubernetes' don't -> Impediments fair comparison
		- Solution: Need requests to be generated and timed already inside the mesh to enable a fair comparison 
* * 1.5 hours * Developed new architecture to get around unfair comparison problem
	- Split load generator into 2 micro-services -> Benchmark Controller (unmeshed) & Request Generator (meshed)
* * 1 hours * Found solutions to Consul problem for new architecture but do not like them
	- Benchmark Controller microservice can be replaced by a client-like app which runs locally -> Lots of work, still lots of stuff to do
		- Would need to SSH in to run commands, find a way to extract results from cluster, potentially need to stay connected the whole time
			- Could get around staying connected by having request-generator write results down instead of transmitting them, then request them
	- Can have ingress run for consul as now it would only run for 1 request, compared to multiple before -> Unfair comparison
* * 1.5 hours * Refactoring current code to develop new architecture
* * 2 hours * Debugging new architecture and refactoring

## 19 January 2023
* * 0.5 hours * Updated automated bash script to test new arch with Istio and Linkerd (Worked last night on consul)
* * 0.5 hours * Changed Linkerd to work with implicit Injection through namespace and not explicit injection through manifest (More similar to Consul and Istio)
* * 1 hour * Changed Linkerd to work with implicit Injection through namespace and not explicit injection through manifest (More similar to Consul and Istio)
* * 0.5 hours * Tested new Prometheus attempt -> Fails, need NFS storage
* * 0.5 hours * Meeting with Yehia

## 20 January 2023
* * 3 hours * All data from apache ab is now stored into files and zipped

## 21 January 2023
* * 2 hour * Debugged apache ab data transfer and set up copy automatically + found diagram to help explain it

## 22 January 2023
* * 0.5 hours * NFS storage for Prometheus not working, trying new Prometheus guide

## 23 January 2023
* * 1 hour * attempting new Prometheus deployment

## 24 January 2023
* * 0.5 hours * Prometheus deploys, however service does not work

## 25 January 2023
* * 0.5 hours * Prometheus service works, not sure how to collect metrics or check if pods are being monitored
* * 0 hours * Collected results from complete run to show Yehia tomorrow

## 26 January 2023
* * 0.5 hours * Running a Consul run with everything meshed to compare to Consul with Ingress
* * 1.0 hour * Prometheus is spamming all pods with a /metrics request every 15s and /metrics returns a 404
	- Found out Prometheus scrapes metrics from pods doing that
	- Found out cluster uses Role Based Access Control (RBAC), which was not configured properly in cluster-role to access /metrics

## 27 January 2023
* * 0 hours * Meeting with Yehia moved to Monday
* * 0.5 hours * Updated Prometheus to access /metrics, still does not work
* * 1 hours * Researched alternatives for metrics

## 28 January 2023
* * 1.0 hours * Tried to set up Prometheus with metrics-server -> Discontinued because metrics server is recommended for scalability not monitoring
* * 1.5 hours * Researched more alternatives, like cadvisor -> Still not ideal

## 29 January 2023
* * 1.0 hours * There are multiple types of metrics, node based (node exporter), pod based (cadvisor/metrics-server), app running within pod based (metrics-server/internal metrics system per app)

## 30 January 2023
* * 0.5 hours * Met with Yehia, discussed how to represent data -> CDF graphs would be very useful, can group different SMTs for the same stats, or different stats comparison within the same SMTs
* * 2.0 hours * Set up NodeExporter to extract cluster metrics 

## 31 January 2023
* * 1.5 hours * Started configuring request generator to start pulling metrics from Prometheus

## 01 February 2023
* * 1.0 hour * Created quality of life updates and updated issue with git corruption in repo
* * 2.0 hour * NodeExporter does not provide a MemoryUsed reading, instead it gives FreeMemory and TotalMemory -> RequestGenerator now calculates memory used

## 02 February 2023
* * 1 hour * Metrics measures are very sparse and do not give us accurate measurements -> Prometheus now scrapes results every 5 seconds -> Further reduced to 1s
* * 0.5 hours * Met with Yehia, discussed how PrometheusMetrics has been configured so far & discussed how to represent realistic data
* * 1 hour * Tried to set up CPU metrics pulling but could not get it to work
* * 0.5 hours * Updated values to represent real life usage
* * 1 hour * Run a realistic run using real values and trying to collect metrics -> Server Crashed

## 03 February 2023 (Server is down)
* * 1.5 hours * Scaled up pods to better distribute load, added Resource Limits to pods so they don't crash the server
* * 1 hour * Added Error Handling to resource gathering metrics to prevent it from stopping execution

## 04 February 2023 (Server is down)
* * 2 hours * Created virtual box in home computer and trial and tested distribution of resources and pods, found upscaling pods with less resources each might help
* * 2 hours * Used results saved to start creating graphs, set up gnuplot to create latency graphs

## 06 February 2023 (Yehia is in office, Server Restarts)
* * 1 hour * Tried rerunning -> Server almost crashed (Killed it on time) -> Scaled pods up, reduced simulatenous users
* * 3 hours * Trial & Tested around with pods scaling and resources per pods. Increased apache ab timeout period

## 08 February 2023
* * 0.5 hours * Benchmark sometimes sends requests before pods are fully live -> Increased wait before sending requests
* * 3.5 hours * Kept trial & Testing with pods scaling, resources per pods and num of users/services -> Kubernetes runs

## 09 February 2023
* * 0.5 hours * Met with Yehia, went over graphs, discussed findings from graph data, agreed on rerunning certain benchamrks because of weird values
* * 1.5 hours * Automated the creation of memory graphs

## 11 February 2023
* * 0.5 hours * Tried setting up CPU gathering -> Failed, provides average over time not usage at diff points in time like memory
* * 3.5 hours * Collected different usage per id at diff points in time, collected total resource available and tried calculating percentage usage

## 12 February 2023
* * 3 hours * Tried debugging homemade CPU calculator -> Its terribly broken, there are measurements missing
* * 1 hour * Went back to collecting average -> Can represent in a bar chart

## 13 February 2023
* * 0.5 hour * Performed a complete run to collect Istio, Linkerd and Kube to check data looks valid in graphs
* * 1 hour * Started configuring Consul, attempted to use an Ingress gateway
* * 0.5 hours * Consul pods fail to start up, they start consuming more and more resources and crash the server (Server Crashes)

## 14 February 2023
* * 1 hour * Worked on writing diss methodology
* * 0.5 hours * Further reduced users/services and resource per pods because Consul didn't seem able to handle it

## 15 February 2023
* * 2 hours * Tried to set up consul run on virtualbox, Consul gives weird error and will not run on vbox

## 16 Februaru 2023
* * 2 hours * Writing diss, collecting references and data from different places, mostly Linkerd and Istio website

## 17 February 2023
* * 1.5 hours * Work on creating CPU graphs, results seem weird though
* * 1 hour * Results for CPU are weird because they are an average over time, which doesn't include time, therefore if Istio uses 20% over 100s looks like less usage than 50% over 10s

## 20 February 2023
* * 0.5 hour * Meeting with Yehia -> Went over memory graphs, discussed issue with CPU, agreed to multiply usage by time to get better reading
* * 1 hour * Added finishing touches to graphs generators and created a multiplier for the CPU calculatio

## 21 February 2023 (Yehia is back in office server restarts)
* * 3 hours * Conducted multiple Istio + Linkerd + Kubernetes run -> SMTs fail to inject all pods in time
	- Some Kubernetes pods crash on occasion with the higher loads (CrashLoopBackOff)
	- Linkerd leaves fails to inject 5-10 pods which remain stuck in CrashLoopBackOff
	- Istio fails to inject 30-25 pods which often remain in CrashLoopBackOff
	- Crashed pods are not sent request which gives advantage to the other SMTs, however this does prove how Linkerd is considerably more lightweight than Istio

## 22 February 2023
* * 2 hours * Reduced pods to 62 so Istio can handle it and kept resource cap per pod
	- Istio absolutely smoked all the other runs (5 - 6 mins vs 11 - 12 mins), but also used considerably more resources
		- Why? Turns out the resource cap is limited to the container running the micro-counter, NOT the entire pod
			- In previous run, there were not enough resources for Istio to run properly
			- In this run, the uncapped areas of Istio benefit more from the additional resources than the uncapped areas of Linkerd/Kubernetes
		- This demonstrates that Istio Control and Data Plane (Envoy Proxy) are considerably more resource heavy than Linkerd's 

* * 1 hour * Uncapped resource usage per pod to see how the systems optimise themselves
	- Kubernetes and Linkerd down to 4-5 mins, Istio down to 5-6 mins
	- Linkerd and Kube now use more resources, but Istio still uses more resources
	- Can conclude that Linkerd is more efficient than Istio, needing less resources and obtaining better results

* * 0.5 hours * Yehia will be OOO for a while, so went in to collect Server

* * 2 hours * Attempting to get Consul to function
	- Problem 1: Consul can't handle so much simultaneous injection, 62 pods is too much
	- Problem 2: Consul injected pods fail to ping their own service, might have to mess around with the DNS Configuration


## 23 February 2023
* * 1 hour * Looked for information about services problem, only found a bug that Kubernetes had in 2017 which caused this, was resolved by using IP address
	- Tried using IP address, it did not work
* * 3 hours * Trying to upscale the pods slowly to find out when consul inject starts failing
	- 20 works, 30 works, 36 is optimum solution

## 24 February 2023
* * 0 hours * Set pods to 36 for everything and rerun benchmark

## 26 February 2023
* * 0 hours * Reduced overly time consuming sleeps *

## 27 February 2023
* * 0.5 hours * Meeting with Yehia -> Discussed problems with Node Exporter, if cannot debug by tonight moving on to Cadvisor, memory readings look okay
* * 4 hours * Trying to measure CPU usage through Node Exporter (Not going well)
* * 0.5 hours * Resolved error that sometimes causes failure in Linkerd Injection

## 28 February 2023
* * 3 hours * Implementing Cadvisor and creating service to test it properly functions
* * 1.5 hours * Linking Cadvisor to Prometheus
* * 1.5 hours * Reducing Cadvisor usage as it currently crashes the server

## 1 March 2023
* * 0.5 hours * Further configure Cadvisor
* * 2.5 hours * Extract CPU measurements from Cadvisor 
	- Problems:
		- Granularity is too low, this sometimes affects results
		- Cadvisor uses dynamic scraping, which then is further delayed by Prometheus scraping
		- Disabled all metrics but CPU fixed issue
* * 0.5 hours * Improved application Logging
* * 1 hour * Added collection of memory measurements from Cadvisor
	- Problem: Had to enable memory readings, this crashes the server again
* * 1 hour * Get Cadvisor to collect more scrapes
	- Increase scraping rate -> Server breaks
	- Reduce rate -> Can't get results
	- Switch to --docker-only=True -> Can have higher rate now!
* * 1 hour * Keep trying to get metrics
	- Problem: There is still issue with granularity, there are some errors with measurements being larger for lower services...

## 2 March 2023
* * 1 hour * Added more details to CPU usage collection to detect errors
* * 0.5 hours * Improved logging to make system more transparent when debugging
* * 0.5 hours * Reduced number of deployments so Cadvisor can handle it -> from 36 to 24.
* * 1.5 hours * Cadvisor uses dynamic scraping, therefore I cannot add data together from different pods
	- Solution: Take an average per pod and sum it together
* * 0.5 hours * Meeting with Yehia to discuss all problems with Cadvisor
	- Recommendation: Use scatterplot to plot the proxies average in the data plane
* * 1 hour * Tested different queries to collect memory usage
* * 1 hour * Refactored file storage system to make it more streamlined and less confusing 
* * 0.5 hours * Collect Memory Usage per proxy & Memory usage by micro-counter
* * 1 hour * Refactored logic to collect measurements with function (Simplifies code)
* * 1.5 hours * Found Cadvisor takes double measurements
	- Cadvisor collects measurements from cgroups
	- There is a cgroup called kubelet
	- There is a cgroup called docker which seems to be kubelet's parent, leading to double measurements being taken
	- Tried adding Memory usage together, however it does not match, verified with free and normal kubernetes deployment without executing anything
	- Confirms data is being doubled
* * 0.5 hours * I select data using only 1 id and it matches free
	- Problem: Why do doubled measurements match Node Exporter measurements?

## 3 March 2023
* * 0.5 hours * Removed all duplicated measurements
* * 1 hour * Collect grouped memory from cluster
* * 0.5 hours * Updated files so all grouped memory goes to the same file (Facilitates plotting)
* * 1 hour * Automated the creation of the gnuplot scripts
* * 2 hours * Researched different types of Linux memory
	- 6 types: Total, Free, Available, Cache, Buffer and Used. 
		- Used = Total - Available
		- Available = Free + Cache + Buffer, as cache and buffer memory can be immediately dropped without swapping if needed for application
		- Therefore usage should be Total - Available, current calculation was Total - Free
* * 1 hour * Finished memory collection queries and reorder for easier readability/debugging -> Generated improved graph
	- Looks more how we expected it to look!

## 4 March 2023
* * 1.5 hours * Automated plotting graph capabilities -> Unzipping and copying data into batch run is now done automatically, same as clean up
* * 1.5 hours * Created scatterplot
	- Problem: Either it plots the same x value 60 times creating a curved line to the side OR
	- Does not plot labels at all (Going with this)
	- ScatterPlot looks ugly because of data distribution, ask Yehia what to do on Monday
* * 2 hours * Tried debugging Node Exporter CPU usage using different queries
	- Cannot get it to work, rate and sum do not seem to do what I think they should do
* * 1.5 hours * Tried debugging Node Exporter CPU usage using different queries
	- Cannot get it to work, rate and sum still mess up everything (Tried multiplying adding and subtracting time for both (cad and node) nothing works)
* * 0.5 hour * Found way to obtain percentage usage, multiply usage by time and seem to be collecting valid measurements
* * 0.5 hours * Debugged timelog not syncing with repo issues
* * 0.5 hours * Execute complete run & Deploy overnight run, with 10 requests, to debug scraping issues