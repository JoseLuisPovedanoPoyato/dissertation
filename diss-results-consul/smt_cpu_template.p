set size 1, 1
set datafile separator ','
set terminal png size 700 
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_cpu__user_.png"
set title "SMTs CPU Usage - _user_ Users"
set xlabel "Services"
set ylabel "CPU Usage ()"
plot "kubernetes/cpu__user_" using 2:xtic(1) title "Kubernetes", "istio/cpu__user_" using 2:xtic(1) title "Istio", "linkerd/cpu__user_" using 2:xtic(1) title "Linkerd", "consul/cpu__user_" using 2:xtic(1) title "Consul"

#Next plot starts here