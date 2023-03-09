set size 1, 1
set datafile separator ','
set terminal png size 700, 700
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_cpu__user___request___service_.png"
set title "SMTs CPU Usage Distribution - _user_ Users, _request_ RPU, _service_ Services"
set xlabel "Application Area"
set ylabel "CPU Used (s)"
set xtics rotate by -45
plot "kubernetes/grouped_cpu_file__user___request___service_" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_cpu_file__user___request___service_" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_cpu_file__user___request___service_" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here