# Unzip results into folders
find ./linkerd/ ! -name '*.p' -type f -delete
find ./istio/ ! -name '*.p' -type f -delete
find ./kubernetes/ ! -name '*.p' -type f -delete
find ./consul/ ! -name '*.p' -type f -delete

unzip linkerd.zip -d linkerd/
unzip istio.zip -d istio/
unzip kubernetes.zip -d kubernetes/
unzip istio.zip -d consul/