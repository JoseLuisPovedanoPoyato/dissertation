set datafile separator ','
set terminal png size 700 
set output "smts_latency_100_10_20.png"
set title "SMTs Latency - 100 Users, 10 RPU, 20 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_100_10_20" every ::1 title "Kubernetes" lc rgb "#1b9e77", "istio/csv_100_10_20" every ::1 title "Istio" lc rgb "#7570b3", "linkerd/csv_100_10_20" every ::1 title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_100_10_40.png"
set title "SMTs Latency - 100 Users, 10 RPU, 40 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_100_10_40" every ::1 title "Kubernetes" lc rgb "#1b9e77", "istio/csv_100_10_40" every ::1 title "Istio" lc rgb "#7570b3", "linkerd/csv_100_10_40" every ::1 title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_100_10_80.png"
set title "SMTs Latency - 100 Users, 10 RPU, 80 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_100_10_80" every ::1 title "Kubernetes" lc rgb "#1b9e77", "istio/csv_100_10_80" every ::1 title "Istio" lc rgb "#7570b3", "linkerd/csv_100_10_80" every ::1 title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_200_10_20.png"
set title "SMTs Latency - 200 Users, 10 RPU, 20 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_200_10_20" every ::1 title "Kubernetes" lc rgb "#1b9e77", "istio/csv_200_10_20" every ::1 title "Istio" lc rgb "#7570b3", "linkerd/csv_200_10_20" every ::1 title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_200_10_40.png"
set title "SMTs Latency - 200 Users, 10 RPU, 40 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_200_10_40" every ::1 title "Kubernetes" lc rgb "#1b9e77", "istio/csv_200_10_40" every ::1 title "Istio" lc rgb "#7570b3", "linkerd/csv_200_10_40" every ::1 title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_200_10_80.png"
set title "SMTs Latency - 200 Users, 10 RPU, 80 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_200_10_80" every ::1 title "Kubernetes" lc rgb "#1b9e77", "istio/csv_200_10_80" every ::1 title "Istio" lc rgb "#7570b3", "linkerd/csv_200_10_80" every ::1 title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_400_10_20.png"
set title "SMTs Latency - 400 Users, 10 RPU, 20 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_400_10_20" every ::1 title "Kubernetes" lc rgb "#1b9e77", "istio/csv_400_10_20" every ::1 title "Istio" lc rgb "#7570b3", "linkerd/csv_400_10_20" every ::1 title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_400_10_40.png"
set title "SMTs Latency - 400 Users, 10 RPU, 40 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_400_10_40" every ::1 title "Kubernetes" lc rgb "#1b9e77", "istio/csv_400_10_40" every ::1 title "Istio" lc rgb "#7570b3", "linkerd/csv_400_10_40" every ::1 title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_400_10_80.png"
set title "SMTs Latency - 400 Users, 10 RPU, 80 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_400_10_80" every ::1 title "Kubernetes" lc rgb "#1b9e77", "istio/csv_400_10_80" every ::1 title "Istio" lc rgb "#7570b3", "linkerd/csv_400_10_80" every ::1 title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_600_10_20.png"
set title "SMTs Latency - 600 Users, 10 RPU, 20 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_600_10_20" every ::1 title "Kubernetes" lc rgb "#1b9e77", "istio/csv_600_10_20" every ::1 title "Istio" lc rgb "#7570b3", "linkerd/csv_600_10_20" every ::1 title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_600_10_40.png"
set title "SMTs Latency - 600 Users, 10 RPU, 40 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_600_10_40" every ::1 title "Kubernetes" lc rgb "#1b9e77", "istio/csv_600_10_40" every ::1 title "Istio" lc rgb "#7570b3", "linkerd/csv_600_10_40" every ::1 title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_600_10_80.png"
set title "SMTs Latency - 600 Users, 10 RPU, 80 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_600_10_80" every ::1 title "Kubernetes" lc rgb "#1b9e77", "istio/csv_600_10_80" every ::1 title "Istio" lc rgb "#7570b3", "linkerd/csv_600_10_80" every ::1 title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_800_10_20.png"
set title "SMTs Latency - 800 Users, 10 RPU, 20 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_800_10_20" every ::1 title "Kubernetes" lc rgb "#1b9e77", "istio/csv_800_10_20" every ::1 title "Istio" lc rgb "#7570b3", "linkerd/csv_800_10_20" every ::1 title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_800_10_40.png"
set title "SMTs Latency - 800 Users, 10 RPU, 40 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_800_10_40" every ::1 title "Kubernetes" lc rgb "#1b9e77", "istio/csv_800_10_40" every ::1 title "Istio" lc rgb "#7570b3", "linkerd/csv_800_10_40" every ::1 title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_800_10_80.png"
set title "SMTs Latency - 800 Users, 10 RPU, 80 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_800_10_80" every ::1 title "Kubernetes" lc rgb "#1b9e77", "istio/csv_800_10_80" every ::1 title "Istio" lc rgb "#7570b3", "linkerd/csv_800_10_80" every ::1 title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
