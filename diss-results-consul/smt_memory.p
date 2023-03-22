set datafile separator ','
set terminal png size 700 
set output "smts_memory_100_10_10.png"
set title "SMTs Memory - 100 Users, 10 RPU, 10 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_100_10_10" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_100_10_10" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_100_10_10" using ($1):($2/(1024 * 1024)) title "Linkerd", "consul/memory_100_10_10" using ($1):($2/(1024 * 1024)) title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_100_10_20.png"
set title "SMTs Memory - 100 Users, 10 RPU, 20 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_100_10_20" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_100_10_20" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_100_10_20" using ($1):($2/(1024 * 1024)) title "Linkerd", "consul/memory_100_10_20" using ($1):($2/(1024 * 1024)) title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_100_10_40.png"
set title "SMTs Memory - 100 Users, 10 RPU, 40 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_100_10_40" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_100_10_40" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_100_10_40" using ($1):($2/(1024 * 1024)) title "Linkerd", "consul/memory_100_10_40" using ($1):($2/(1024 * 1024)) title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_200_10_10.png"
set title "SMTs Memory - 200 Users, 10 RPU, 10 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_200_10_10" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_200_10_10" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_200_10_10" using ($1):($2/(1024 * 1024)) title "Linkerd", "consul/memory_200_10_10" using ($1):($2/(1024 * 1024)) title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_200_10_20.png"
set title "SMTs Memory - 200 Users, 10 RPU, 20 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_200_10_20" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_200_10_20" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_200_10_20" using ($1):($2/(1024 * 1024)) title "Linkerd", "consul/memory_200_10_20" using ($1):($2/(1024 * 1024)) title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_200_10_40.png"
set title "SMTs Memory - 200 Users, 10 RPU, 40 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_200_10_40" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_200_10_40" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_200_10_40" using ($1):($2/(1024 * 1024)) title "Linkerd", "consul/memory_200_10_40" using ($1):($2/(1024 * 1024)) title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_400_10_10.png"
set title "SMTs Memory - 400 Users, 10 RPU, 10 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_400_10_10" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_400_10_10" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_400_10_10" using ($1):($2/(1024 * 1024)) title "Linkerd", "consul/memory_400_10_10" using ($1):($2/(1024 * 1024)) title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_400_10_20.png"
set title "SMTs Memory - 400 Users, 10 RPU, 20 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_400_10_20" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_400_10_20" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_400_10_20" using ($1):($2/(1024 * 1024)) title "Linkerd", "consul/memory_400_10_20" using ($1):($2/(1024 * 1024)) title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_400_10_40.png"
set title "SMTs Memory - 400 Users, 10 RPU, 40 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_400_10_40" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_400_10_40" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_400_10_40" using ($1):($2/(1024 * 1024)) title "Linkerd", "consul/memory_400_10_40" using ($1):($2/(1024 * 1024)) title "Consul"

#Next plot starts here
