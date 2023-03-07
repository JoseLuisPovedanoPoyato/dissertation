set datafile separator ','
set terminal png size 700 
set output "smts_memory_100_1_10.png"
set title "SMTs Memory - 100 Users, 1 RPU, 10 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_100_1_10" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_100_1_10" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_100_1_10" using ($1):($2/(1024 * 1024)) title "Linkerd", "consul/memory_100_1_10" using ($1):($2/(1024 * 1024)) title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_100_1_20.png"
set title "SMTs Memory - 100 Users, 1 RPU, 20 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_100_1_20" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_100_1_20" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_100_1_20" using ($1):($2/(1024 * 1024)) title "Linkerd", "consul/memory_100_1_20" using ($1):($2/(1024 * 1024)) title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_100_1_40.png"
set title "SMTs Memory - 100 Users, 1 RPU, 40 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_100_1_40" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_100_1_40" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_100_1_40" using ($1):($2/(1024 * 1024)) title "Linkerd", "consul/memory_100_1_40" using ($1):($2/(1024 * 1024)) title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_100_1_60.png"
set title "SMTs Memory - 100 Users, 1 RPU, 60 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_100_1_60" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_100_1_60" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_100_1_60" using ($1):($2/(1024 * 1024)) title "Linkerd", "consul/memory_100_1_60" using ($1):($2/(1024 * 1024)) title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_100_1_80.png"
set title "SMTs Memory - 100 Users, 1 RPU, 80 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_100_1_80" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_100_1_80" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_100_1_80" using ($1):($2/(1024 * 1024)) title "Linkerd", "consul/memory_100_1_80" using ($1):($2/(1024 * 1024)) title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_200_1_10.png"
set title "SMTs Memory - 200 Users, 1 RPU, 10 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_200_1_10" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_200_1_10" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_200_1_10" using ($1):($2/(1024 * 1024)) title "Linkerd", "consul/memory_200_1_10" using ($1):($2/(1024 * 1024)) title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_200_1_20.png"
set title "SMTs Memory - 200 Users, 1 RPU, 20 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_200_1_20" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_200_1_20" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_200_1_20" using ($1):($2/(1024 * 1024)) title "Linkerd", "consul/memory_200_1_20" using ($1):($2/(1024 * 1024)) title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_200_1_40.png"
set title "SMTs Memory - 200 Users, 1 RPU, 40 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_200_1_40" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_200_1_40" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_200_1_40" using ($1):($2/(1024 * 1024)) title "Linkerd", "consul/memory_200_1_40" using ($1):($2/(1024 * 1024)) title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_200_1_60.png"
set title "SMTs Memory - 200 Users, 1 RPU, 60 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_200_1_60" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_200_1_60" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_200_1_60" using ($1):($2/(1024 * 1024)) title "Linkerd", "consul/memory_200_1_60" using ($1):($2/(1024 * 1024)) title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_200_1_80.png"
set title "SMTs Memory - 200 Users, 1 RPU, 80 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_200_1_80" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_200_1_80" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_200_1_80" using ($1):($2/(1024 * 1024)) title "Linkerd", "consul/memory_200_1_80" using ($1):($2/(1024 * 1024)) title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_400_1_10.png"
set title "SMTs Memory - 400 Users, 1 RPU, 10 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_400_1_10" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_400_1_10" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_400_1_10" using ($1):($2/(1024 * 1024)) title "Linkerd", "consul/memory_400_1_10" using ($1):($2/(1024 * 1024)) title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_400_1_20.png"
set title "SMTs Memory - 400 Users, 1 RPU, 20 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_400_1_20" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_400_1_20" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_400_1_20" using ($1):($2/(1024 * 1024)) title "Linkerd", "consul/memory_400_1_20" using ($1):($2/(1024 * 1024)) title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_400_1_40.png"
set title "SMTs Memory - 400 Users, 1 RPU, 40 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_400_1_40" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_400_1_40" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_400_1_40" using ($1):($2/(1024 * 1024)) title "Linkerd", "consul/memory_400_1_40" using ($1):($2/(1024 * 1024)) title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_400_1_60.png"
set title "SMTs Memory - 400 Users, 1 RPU, 60 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_400_1_60" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_400_1_60" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_400_1_60" using ($1):($2/(1024 * 1024)) title "Linkerd", "consul/memory_400_1_60" using ($1):($2/(1024 * 1024)) title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_400_1_80.png"
set title "SMTs Memory - 400 Users, 1 RPU, 80 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_400_1_80" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_400_1_80" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_400_1_80" using ($1):($2/(1024 * 1024)) title "Linkerd", "consul/memory_400_1_80" using ($1):($2/(1024 * 1024)) title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_600_1_10.png"
set title "SMTs Memory - 600 Users, 1 RPU, 10 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_600_1_10" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_600_1_10" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_600_1_10" using ($1):($2/(1024 * 1024)) title "Linkerd", "consul/memory_600_1_10" using ($1):($2/(1024 * 1024)) title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_600_1_20.png"
set title "SMTs Memory - 600 Users, 1 RPU, 20 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_600_1_20" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_600_1_20" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_600_1_20" using ($1):($2/(1024 * 1024)) title "Linkerd", "consul/memory_600_1_20" using ($1):($2/(1024 * 1024)) title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_600_1_40.png"
set title "SMTs Memory - 600 Users, 1 RPU, 40 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_600_1_40" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_600_1_40" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_600_1_40" using ($1):($2/(1024 * 1024)) title "Linkerd", "consul/memory_600_1_40" using ($1):($2/(1024 * 1024)) title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_600_1_60.png"
set title "SMTs Memory - 600 Users, 1 RPU, 60 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_600_1_60" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_600_1_60" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_600_1_60" using ($1):($2/(1024 * 1024)) title "Linkerd", "consul/memory_600_1_60" using ($1):($2/(1024 * 1024)) title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_600_1_80.png"
set title "SMTs Memory - 600 Users, 1 RPU, 80 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_600_1_80" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_600_1_80" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_600_1_80" using ($1):($2/(1024 * 1024)) title "Linkerd", "consul/memory_600_1_80" using ($1):($2/(1024 * 1024)) title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_800_1_10.png"
set title "SMTs Memory - 800 Users, 1 RPU, 10 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_800_1_10" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_800_1_10" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_800_1_10" using ($1):($2/(1024 * 1024)) title "Linkerd", "consul/memory_800_1_10" using ($1):($2/(1024 * 1024)) title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_800_1_20.png"
set title "SMTs Memory - 800 Users, 1 RPU, 20 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_800_1_20" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_800_1_20" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_800_1_20" using ($1):($2/(1024 * 1024)) title "Linkerd", "consul/memory_800_1_20" using ($1):($2/(1024 * 1024)) title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_800_1_40.png"
set title "SMTs Memory - 800 Users, 1 RPU, 40 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_800_1_40" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_800_1_40" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_800_1_40" using ($1):($2/(1024 * 1024)) title "Linkerd", "consul/memory_800_1_40" using ($1):($2/(1024 * 1024)) title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_800_1_60.png"
set title "SMTs Memory - 800 Users, 1 RPU, 60 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_800_1_60" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_800_1_60" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_800_1_60" using ($1):($2/(1024 * 1024)) title "Linkerd", "consul/memory_800_1_60" using ($1):($2/(1024 * 1024)) title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_800_1_80.png"
set title "SMTs Memory - 800 Users, 1 RPU, 80 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_800_1_80" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_800_1_80" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_800_1_80" using ($1):($2/(1024 * 1024)) title "Linkerd", "consul/memory_800_1_80" using ($1):($2/(1024 * 1024)) title "Consul"

#Next plot starts here
