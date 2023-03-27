set datafile separator ','
set terminal png size 700 
set output "smts_latency__user___request___service_.png"
set title "SMTs Latency - _user_ Users, _request_ RPU, _service_ Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set logscale y 10

set xtics rotate by -45
plot "kubernetes/csv__user___request___service_" every ::1 lc rgb "#1b9e77" title "Kubernetes", "istio/csv__user___request___service_" every ::1 lc rgb "#7570b3" title "Istio", "linkerd/csv__user___request___service_" every ::1 lc rgb "#d95f02" title "Linkerd", "consul/csv__user___request___service_" every ::1 lc rgb "#e69f00" title "Consul"

#Next plot starts here