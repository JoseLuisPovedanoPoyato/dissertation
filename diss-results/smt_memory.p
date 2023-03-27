set datafile separator ','
set terminal png size 700 
set output "smts_memory_100_3_10.png"
set title "SMTs Memory - 100 Users, 3 RPU, 10 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_100_3_10" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_100_3_10" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_100_3_10" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_100_3_20.png"
set title "SMTs Memory - 100 Users, 3 RPU, 20 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_100_3_20" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_100_3_20" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_100_3_20" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_100_3_40.png"
set title "SMTs Memory - 100 Users, 3 RPU, 40 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_100_3_40" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_100_3_40" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_100_3_40" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_100_3_60.png"
set title "SMTs Memory - 100 Users, 3 RPU, 60 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_100_3_60" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_100_3_60" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_100_3_60" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_100_3_80.png"
set title "SMTs Memory - 100 Users, 3 RPU, 80 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_100_3_80" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_100_3_80" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_100_3_80" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_100_5_10.png"
set title "SMTs Memory - 100 Users, 5 RPU, 10 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_100_5_10" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_100_5_10" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_100_5_10" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_100_5_20.png"
set title "SMTs Memory - 100 Users, 5 RPU, 20 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_100_5_20" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_100_5_20" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_100_5_20" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_100_5_40.png"
set title "SMTs Memory - 100 Users, 5 RPU, 40 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_100_5_40" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_100_5_40" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_100_5_40" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_100_5_60.png"
set title "SMTs Memory - 100 Users, 5 RPU, 60 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_100_5_60" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_100_5_60" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_100_5_60" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_100_5_80.png"
set title "SMTs Memory - 100 Users, 5 RPU, 80 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_100_5_80" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_100_5_80" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_100_5_80" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_100_10_10.png"
set title "SMTs Memory - 100 Users, 10 RPU, 10 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_100_10_10" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_100_10_10" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_100_10_10" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_100_10_20.png"
set title "SMTs Memory - 100 Users, 10 RPU, 20 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_100_10_20" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_100_10_20" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_100_10_20" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_100_10_40.png"
set title "SMTs Memory - 100 Users, 10 RPU, 40 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_100_10_40" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_100_10_40" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_100_10_40" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_100_10_60.png"
set title "SMTs Memory - 100 Users, 10 RPU, 60 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_100_10_60" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_100_10_60" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_100_10_60" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_100_10_80.png"
set title "SMTs Memory - 100 Users, 10 RPU, 80 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_100_10_80" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_100_10_80" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_100_10_80" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_200_3_10.png"
set title "SMTs Memory - 200 Users, 3 RPU, 10 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_200_3_10" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_200_3_10" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_200_3_10" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_200_3_20.png"
set title "SMTs Memory - 200 Users, 3 RPU, 20 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_200_3_20" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_200_3_20" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_200_3_20" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_200_3_40.png"
set title "SMTs Memory - 200 Users, 3 RPU, 40 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_200_3_40" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_200_3_40" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_200_3_40" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_200_3_60.png"
set title "SMTs Memory - 200 Users, 3 RPU, 60 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_200_3_60" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_200_3_60" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_200_3_60" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_200_3_80.png"
set title "SMTs Memory - 200 Users, 3 RPU, 80 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_200_3_80" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_200_3_80" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_200_3_80" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_200_5_10.png"
set title "SMTs Memory - 200 Users, 5 RPU, 10 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_200_5_10" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_200_5_10" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_200_5_10" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_200_5_20.png"
set title "SMTs Memory - 200 Users, 5 RPU, 20 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_200_5_20" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_200_5_20" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_200_5_20" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_200_5_40.png"
set title "SMTs Memory - 200 Users, 5 RPU, 40 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_200_5_40" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_200_5_40" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_200_5_40" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_200_5_60.png"
set title "SMTs Memory - 200 Users, 5 RPU, 60 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_200_5_60" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_200_5_60" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_200_5_60" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_200_5_80.png"
set title "SMTs Memory - 200 Users, 5 RPU, 80 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_200_5_80" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_200_5_80" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_200_5_80" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_200_10_10.png"
set title "SMTs Memory - 200 Users, 10 RPU, 10 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_200_10_10" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_200_10_10" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_200_10_10" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_200_10_20.png"
set title "SMTs Memory - 200 Users, 10 RPU, 20 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_200_10_20" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_200_10_20" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_200_10_20" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_200_10_40.png"
set title "SMTs Memory - 200 Users, 10 RPU, 40 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_200_10_40" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_200_10_40" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_200_10_40" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_200_10_60.png"
set title "SMTs Memory - 200 Users, 10 RPU, 60 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_200_10_60" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_200_10_60" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_200_10_60" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_200_10_80.png"
set title "SMTs Memory - 200 Users, 10 RPU, 80 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_200_10_80" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_200_10_80" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_200_10_80" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_400_3_10.png"
set title "SMTs Memory - 400 Users, 3 RPU, 10 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_400_3_10" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_400_3_10" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_400_3_10" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_400_3_20.png"
set title "SMTs Memory - 400 Users, 3 RPU, 20 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_400_3_20" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_400_3_20" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_400_3_20" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_400_3_40.png"
set title "SMTs Memory - 400 Users, 3 RPU, 40 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_400_3_40" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_400_3_40" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_400_3_40" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_400_3_60.png"
set title "SMTs Memory - 400 Users, 3 RPU, 60 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_400_3_60" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_400_3_60" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_400_3_60" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_400_3_80.png"
set title "SMTs Memory - 400 Users, 3 RPU, 80 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_400_3_80" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_400_3_80" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_400_3_80" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_400_5_10.png"
set title "SMTs Memory - 400 Users, 5 RPU, 10 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_400_5_10" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_400_5_10" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_400_5_10" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_400_5_20.png"
set title "SMTs Memory - 400 Users, 5 RPU, 20 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_400_5_20" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_400_5_20" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_400_5_20" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_400_5_40.png"
set title "SMTs Memory - 400 Users, 5 RPU, 40 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_400_5_40" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_400_5_40" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_400_5_40" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_400_5_60.png"
set title "SMTs Memory - 400 Users, 5 RPU, 60 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_400_5_60" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_400_5_60" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_400_5_60" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_400_5_80.png"
set title "SMTs Memory - 400 Users, 5 RPU, 80 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_400_5_80" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_400_5_80" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_400_5_80" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_400_10_10.png"
set title "SMTs Memory - 400 Users, 10 RPU, 10 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_400_10_10" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_400_10_10" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_400_10_10" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_400_10_20.png"
set title "SMTs Memory - 400 Users, 10 RPU, 20 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_400_10_20" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_400_10_20" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_400_10_20" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_400_10_40.png"
set title "SMTs Memory - 400 Users, 10 RPU, 40 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_400_10_40" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_400_10_40" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_400_10_40" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_400_10_60.png"
set title "SMTs Memory - 400 Users, 10 RPU, 60 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_400_10_60" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_400_10_60" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_400_10_60" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_400_10_80.png"
set title "SMTs Memory - 400 Users, 10 RPU, 80 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_400_10_80" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_400_10_80" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_400_10_80" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_600_3_10.png"
set title "SMTs Memory - 600 Users, 3 RPU, 10 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_600_3_10" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_600_3_10" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_600_3_10" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_600_3_20.png"
set title "SMTs Memory - 600 Users, 3 RPU, 20 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_600_3_20" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_600_3_20" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_600_3_20" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_600_3_40.png"
set title "SMTs Memory - 600 Users, 3 RPU, 40 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_600_3_40" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_600_3_40" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_600_3_40" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_600_3_60.png"
set title "SMTs Memory - 600 Users, 3 RPU, 60 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_600_3_60" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_600_3_60" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_600_3_60" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_600_3_80.png"
set title "SMTs Memory - 600 Users, 3 RPU, 80 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_600_3_80" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_600_3_80" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_600_3_80" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_600_5_10.png"
set title "SMTs Memory - 600 Users, 5 RPU, 10 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_600_5_10" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_600_5_10" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_600_5_10" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_600_5_20.png"
set title "SMTs Memory - 600 Users, 5 RPU, 20 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_600_5_20" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_600_5_20" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_600_5_20" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_600_5_40.png"
set title "SMTs Memory - 600 Users, 5 RPU, 40 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_600_5_40" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_600_5_40" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_600_5_40" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_600_5_60.png"
set title "SMTs Memory - 600 Users, 5 RPU, 60 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_600_5_60" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_600_5_60" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_600_5_60" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_600_5_80.png"
set title "SMTs Memory - 600 Users, 5 RPU, 80 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_600_5_80" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_600_5_80" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_600_5_80" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_600_10_10.png"
set title "SMTs Memory - 600 Users, 10 RPU, 10 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_600_10_10" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_600_10_10" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_600_10_10" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_600_10_20.png"
set title "SMTs Memory - 600 Users, 10 RPU, 20 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_600_10_20" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_600_10_20" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_600_10_20" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_600_10_40.png"
set title "SMTs Memory - 600 Users, 10 RPU, 40 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_600_10_40" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_600_10_40" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_600_10_40" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_600_10_60.png"
set title "SMTs Memory - 600 Users, 10 RPU, 60 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_600_10_60" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_600_10_60" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_600_10_60" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_600_10_80.png"
set title "SMTs Memory - 600 Users, 10 RPU, 80 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_600_10_80" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_600_10_80" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_600_10_80" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_800_3_10.png"
set title "SMTs Memory - 800 Users, 3 RPU, 10 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_800_3_10" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_800_3_10" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_800_3_10" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_800_3_20.png"
set title "SMTs Memory - 800 Users, 3 RPU, 20 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_800_3_20" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_800_3_20" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_800_3_20" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_800_3_40.png"
set title "SMTs Memory - 800 Users, 3 RPU, 40 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_800_3_40" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_800_3_40" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_800_3_40" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_800_3_60.png"
set title "SMTs Memory - 800 Users, 3 RPU, 60 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_800_3_60" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_800_3_60" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_800_3_60" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_800_3_80.png"
set title "SMTs Memory - 800 Users, 3 RPU, 80 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_800_3_80" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_800_3_80" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_800_3_80" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_800_5_10.png"
set title "SMTs Memory - 800 Users, 5 RPU, 10 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_800_5_10" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_800_5_10" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_800_5_10" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_800_5_20.png"
set title "SMTs Memory - 800 Users, 5 RPU, 20 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_800_5_20" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_800_5_20" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_800_5_20" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_800_5_40.png"
set title "SMTs Memory - 800 Users, 5 RPU, 40 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_800_5_40" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_800_5_40" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_800_5_40" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_800_5_60.png"
set title "SMTs Memory - 800 Users, 5 RPU, 60 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_800_5_60" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_800_5_60" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_800_5_60" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_800_5_80.png"
set title "SMTs Memory - 800 Users, 5 RPU, 80 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_800_5_80" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_800_5_80" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_800_5_80" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_800_10_10.png"
set title "SMTs Memory - 800 Users, 10 RPU, 10 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_800_10_10" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_800_10_10" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_800_10_10" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_800_10_20.png"
set title "SMTs Memory - 800 Users, 10 RPU, 20 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_800_10_20" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_800_10_20" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_800_10_20" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_800_10_40.png"
set title "SMTs Memory - 800 Users, 10 RPU, 40 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_800_10_40" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_800_10_40" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_800_10_40" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_800_10_60.png"
set title "SMTs Memory - 800 Users, 10 RPU, 60 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_800_10_60" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_800_10_60" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_800_10_60" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_800_10_80.png"
set title "SMTs Memory - 800 Users, 10 RPU, 80 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_800_10_80" using ($1):($2/(1024 * 1024)) title "Kubernetes" lc rgb "#1b9e77", "linkerd/memory_800_10_80" using ($1):($2/(1024 * 1024)) title "Linkerd" lc rgb "#d95f02", "istio/memory_800_10_80" using ($1):($2/(1024 * 1024)) title "Istio" lc rgb "#7570b3"

#Next plot starts here
