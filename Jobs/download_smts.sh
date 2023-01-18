#!/bin/bash

function download_linkerd_cli(){
	curl --proto '=https' --tlsv1.2 -sSfL https://run.linkerd.io/install | sh
    export PATH=$PATH:/home/jose/.linkerd2/bin
}

function remove_linkerd_cli(){
    # Delete Linkerd's CLI (Only do this if more space is needed)
}

function download_istio_cli(){
	curl -L https://istio.io/downloadIstio | sh -
	mv istio-1.15.3 $home/istio
}

function remove_istio_cli(){
    # Delete Istio's CLI (Only do this if more space is needed)
}

function download_consul_cli(){
	curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
	sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
	sudo apt-get update && sudo apt-get install consul-k8s
}
# --

if [ "$(basename $0)" = "download_smts.sh" ] ; then
    download_linkerd_cli
fi