set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_only_cpu_memory__user___request___service_.png"
set title "Avg CPU Distribution - _user_ Users, _request_ RPU, _service_ Services"
set xlabel "Application Area"
set ylabel "CPU Used (Seconds)"
set xtics rotate by -45
plot "istio/smts_only_cpu_file__user___request___service_" using 2:xtic(1) title "Istio", "linkerd/smts_only_cpu_file__user___request___service_" using 2:xtic(1) title "Linkerd", "consul/smts_only_cpu_file__user___request___service_" using 2:xtic(1) title "Consul"

#Next plot starts here