set datafile separator ','
set terminal png
set output "smts_proxy_mem__user___request___service_.png"
set title "SMTs Data Plane Usage per Proxy - _user_ Users, _request_ RPU, _service_ Microservices"
set style histogram cluster gap 2
set size ratio 0.75 
set grid
set xlabel "Service Mesh"
set ylabel "Memory Usage (Bytes)"
set xtics rotate by -45

set xrange [0:3]

plot "istio/mem_data_plane_by_proxy__user___request___service_" using ($0/$0):2:xtic("Istio") title "Istio", "linkerd/mem_data_plane_by_proxy__user___request___service_" using ($0/$0 + 1):2:xtic("Linkerd") title "Linkerd", "consul/mem_data_plane_by_proxy__user___request___service_" using ($0/$0 + 1):2:xtic("Linkerd") title "Consul"


#Next plot starts here