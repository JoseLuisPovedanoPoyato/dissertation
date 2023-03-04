set size 1, 1
set datafile separator ','
set terminal png
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_cpu__user___request___service_.png"
set title "SMTs Clustered Avg CPU usage - _user_ Users, _service_ Services"
set xlabel "Application Area"
set ylabel "CPU Used (s)"
set xtics rotate by -45
plot "kubernetes/grouped_cpu_file__user___request___service_" using 2:xtic(1) title "Kubernetes", "istio/grouped_cpu_file__user___request___service_" using 2:xtic(1) title "Istio", "linkerd/grouped_cpu_file__user___request___service_" using 2:xtic(1) title "Linkerd"

#Next plot starts here