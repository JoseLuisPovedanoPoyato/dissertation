set size 1, 1
set datafile separator ','
set terminal png size 700 
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"

set output "smts_cpu_100.png"
set title "SMTs CPU Usage - 100 Users"
set xlabel "Services"
set ylabel "CPU Usage ()"
plot "kubernetes/cpu_100" using 2:xtic(1) lc rgb "#1b9e77" title "Kubernetes", "linkerd/cpu_100" using 2:xtic(1) lc rgb "#d95f02" title "Linkerd", "istio/cpu_100" using 2:xtic(1) lc rgb "#7570b3" title "Istio"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700 
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"

set output "smts_cpu_200.png"
set title "SMTs CPU Usage - 200 Users"
set xlabel "Services"
set ylabel "CPU Usage ()"
plot "kubernetes/cpu_200" using 2:xtic(1) lc rgb "#1b9e77" title "Kubernetes", "linkerd/cpu_200" using 2:xtic(1) lc rgb "#d95f02" title "Linkerd", "istio/cpu_200" using 2:xtic(1) lc rgb "#7570b3" title "Istio"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700 
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"

set output "smts_cpu_400.png"
set title "SMTs CPU Usage - 400 Users"
set xlabel "Services"
set ylabel "CPU Usage ()"
plot "kubernetes/cpu_400" using 2:xtic(1) lc rgb "#1b9e77" title "Kubernetes", "linkerd/cpu_400" using 2:xtic(1) lc rgb "#d95f02" title "Linkerd", "istio/cpu_400" using 2:xtic(1) lc rgb "#7570b3" title "Istio"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700 
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"

set output "smts_cpu_600.png"
set title "SMTs CPU Usage - 600 Users"
set xlabel "Services"
set ylabel "CPU Usage ()"
plot "kubernetes/cpu_600" using 2:xtic(1) lc rgb "#1b9e77" title "Kubernetes", "linkerd/cpu_600" using 2:xtic(1) lc rgb "#d95f02" title "Linkerd", "istio/cpu_600" using 2:xtic(1) lc rgb "#7570b3" title "Istio"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700 
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"

set output "smts_cpu_800.png"
set title "SMTs CPU Usage - 800 Users"
set xlabel "Services"
set ylabel "CPU Usage ()"
plot "kubernetes/cpu_800" using 2:xtic(1) lc rgb "#1b9e77" title "Kubernetes", "linkerd/cpu_800" using 2:xtic(1) lc rgb "#d95f02" title "Linkerd", "istio/cpu_800" using 2:xtic(1) lc rgb "#7570b3" title "Istio"

#Next plot starts here
