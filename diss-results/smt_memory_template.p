set datafile separator ','
set terminal png size 700 
set output "smts_memory__user___request___service_.png"
set title "SMTs Memory - _user_ Users, _request_ RPU, _service_ Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory__user___request___service_" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "istio/memory__user___request___service_" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3", "linkerd/memory__user___request___service_" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here