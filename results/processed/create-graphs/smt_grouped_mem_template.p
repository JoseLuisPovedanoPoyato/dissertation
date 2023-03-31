set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory__user___request___service_.png"
set title "Avg Memory Distribution - _user_ Users, _request_ RPU, _service_ Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file__user___request___service_" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "linkerd/grouped_mem_file__user___request___service_" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02", "istio/grouped_mem_file__user___request___service_" using 2:xtic(1) title "Istio" lc rgb "#7570b3"

#Next plot starts here