set datafile separator ','
set terminal png size 700 
set output "smts_latency__user___request___service_.png"
set title "SMTs Latency - _user_ Users, _service_ Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv__user___request___service_" every ::1 title "Kubernetes", "istio/csv__user___request___service_" every ::1 title "Istio", "linkerd/csv__user___request___service_" every ::1 title "Linkerd"

#Next plot starts here