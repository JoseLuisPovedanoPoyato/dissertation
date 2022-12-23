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
