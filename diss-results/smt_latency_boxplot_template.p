set datafile separator ','

set style data boxplot 
plot "kubernetes/csv__user___request___service_" using 1:2, "istio/csv__user___request___service_" using 1:2, "linkerd/csv__user___request___service_" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot__user___request___service_.png"
set title "SMTs Latency - _user_ Users, _request_ RPU, _service_ Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv__user___request___service_" using (1):$2:xtic("100 Users") title "Kubernetes", "istio/csv__user___request___service_" using (1):$2:xtic("100 Users") title "Istio", "linkerd/csv__user___request___service_" using (1):$2:xtic("100 Users") title "Linkerd"

#Next plot starts here