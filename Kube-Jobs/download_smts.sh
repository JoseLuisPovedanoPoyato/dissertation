#!/bin/bash

function download_linkerd_cli(){
	curl --proto '=https' --tlsv1.2 -sSfL https://run.linkerd.io/install | sh
    export PATH=$PATH:/home/jose/.linkerd2/bin
}

function remove_linkerd_cli(){
    # Delete Linkerd's installation repo (Only do this if more space is needed)
}

# --

if [ "$(basename $0)" = "download_smts.sh" ] ; then
    download_linkerd_cli
fi