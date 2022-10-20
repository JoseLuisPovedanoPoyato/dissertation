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