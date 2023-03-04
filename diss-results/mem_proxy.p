set datafile separator ','
set terminal png
set output "proxy_mem_example.png"
set title "SMTs Data Plane Usage per Proxy Example"
set style histogram cluster gap 2
set size ratio 0.75 
set grid
set xlabel "Service Mesh"
set ylabel "Memory Usage (Bytes)"
set xtics rotate by -45

plot "mem_proxy" using 2:xtic(1) title "Istio" #"linkerd/mem_proxy" using 2:xtic(1) title "Linkerd"


#Next plot starts here