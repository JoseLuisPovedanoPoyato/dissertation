set datafile separator ','
set terminal png size 700 
set output "smts_memory_100_3_10.png"
set title "SMTs Memory - 100 Users, 10 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_100_3_10" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_100_3_10" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_100_3_10" using ($1):($2/(1024 * 1024)) title "Linkerd"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_100_3_20.png"
set title "SMTs Memory - 100 Users, 20 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_100_3_20" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_100_3_20" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_100_3_20" using ($1):($2/(1024 * 1024)) title "Linkerd"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_100_3_40.png"
set title "SMTs Memory - 100 Users, 40 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_100_3_40" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_100_3_40" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_100_3_40" using ($1):($2/(1024 * 1024)) title "Linkerd"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_100_3_60.png"
set title "SMTs Memory - 100 Users, 60 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_100_3_60" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_100_3_60" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_100_3_60" using ($1):($2/(1024 * 1024)) title "Linkerd"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_100_3_80.png"
set title "SMTs Memory - 100 Users, 80 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_100_3_80" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_100_3_80" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_100_3_80" using ($1):($2/(1024 * 1024)) title "Linkerd"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_200_3_10.png"
set title "SMTs Memory - 200 Users, 10 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_200_3_10" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_200_3_10" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_200_3_10" using ($1):($2/(1024 * 1024)) title "Linkerd"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_200_3_20.png"
set title "SMTs Memory - 200 Users, 20 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_200_3_20" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_200_3_20" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_200_3_20" using ($1):($2/(1024 * 1024)) title "Linkerd"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_200_3_40.png"
set title "SMTs Memory - 200 Users, 40 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_200_3_40" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_200_3_40" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_200_3_40" using ($1):($2/(1024 * 1024)) title "Linkerd"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_200_3_60.png"
set title "SMTs Memory - 200 Users, 60 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_200_3_60" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_200_3_60" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_200_3_60" using ($1):($2/(1024 * 1024)) title "Linkerd"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_200_3_80.png"
set title "SMTs Memory - 200 Users, 80 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_200_3_80" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_200_3_80" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_200_3_80" using ($1):($2/(1024 * 1024)) title "Linkerd"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_400_3_10.png"
set title "SMTs Memory - 400 Users, 10 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_400_3_10" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_400_3_10" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_400_3_10" using ($1):($2/(1024 * 1024)) title "Linkerd"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_400_3_20.png"
set title "SMTs Memory - 400 Users, 20 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_400_3_20" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_400_3_20" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_400_3_20" using ($1):($2/(1024 * 1024)) title "Linkerd"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_400_3_40.png"
set title "SMTs Memory - 400 Users, 40 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_400_3_40" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_400_3_40" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_400_3_40" using ($1):($2/(1024 * 1024)) title "Linkerd"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_400_3_60.png"
set title "SMTs Memory - 400 Users, 60 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_400_3_60" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_400_3_60" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_400_3_60" using ($1):($2/(1024 * 1024)) title "Linkerd"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_400_3_80.png"
set title "SMTs Memory - 400 Users, 80 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_400_3_80" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_400_3_80" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_400_3_80" using ($1):($2/(1024 * 1024)) title "Linkerd"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_600_3_10.png"
set title "SMTs Memory - 600 Users, 10 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_600_3_10" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_600_3_10" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_600_3_10" using ($1):($2/(1024 * 1024)) title "Linkerd"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_600_3_20.png"
set title "SMTs Memory - 600 Users, 20 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_600_3_20" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_600_3_20" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_600_3_20" using ($1):($2/(1024 * 1024)) title "Linkerd"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_600_3_40.png"
set title "SMTs Memory - 600 Users, 40 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_600_3_40" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_600_3_40" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_600_3_40" using ($1):($2/(1024 * 1024)) title "Linkerd"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_600_3_60.png"
set title "SMTs Memory - 600 Users, 60 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_600_3_60" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_600_3_60" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_600_3_60" using ($1):($2/(1024 * 1024)) title "Linkerd"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_600_3_80.png"
set title "SMTs Memory - 600 Users, 80 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_600_3_80" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_600_3_80" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_600_3_80" using ($1):($2/(1024 * 1024)) title "Linkerd"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_800_3_10.png"
set title "SMTs Memory - 800 Users, 10 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_800_3_10" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_800_3_10" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_800_3_10" using ($1):($2/(1024 * 1024)) title "Linkerd"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_800_3_20.png"
set title "SMTs Memory - 800 Users, 20 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_800_3_20" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_800_3_20" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_800_3_20" using ($1):($2/(1024 * 1024)) title "Linkerd"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_800_3_40.png"
set title "SMTs Memory - 800 Users, 40 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_800_3_40" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_800_3_40" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_800_3_40" using ($1):($2/(1024 * 1024)) title "Linkerd"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_800_3_60.png"
set title "SMTs Memory - 800 Users, 60 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_800_3_60" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_800_3_60" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_800_3_60" using ($1):($2/(1024 * 1024)) title "Linkerd"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_memory_800_3_80.png"
set title "SMTs Memory - 800 Users, 80 Microservices"
set size ratio 0.75 
set grid
set xlabel "Time (Since sending first packet) (s)"
set ylabel "Memory Used (MegaBytes)"
plot "kubernetes/memory_800_3_80" using ($1):($2/(1024 * 1024)) title "Kubernetes", "istio/memory_800_3_80" using ($1):($2/(1024 * 1024)) title "Istio", "linkerd/memory_800_3_80" using ($1):($2/(1024 * 1024)) title "Linkerd"

#Next plot starts here
