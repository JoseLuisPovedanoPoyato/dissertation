set datafile separator ','
set terminal png size 700 
set output "smts_latency_100_5_20.png"
set title "SMTs Latency - 100 Users, 5 RPU, 20 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_100_5_20" every ::1 title "Kubernetes", "istio/csv_100_5_20" every ::1 title "Istio", "linkerd/csv_100_5_20" every ::1 title "Linkerd"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_100_5_40.png"
set title "SMTs Latency - 100 Users, 5 RPU, 40 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_100_5_40" every ::1 title "Kubernetes", "istio/csv_100_5_40" every ::1 title "Istio", "linkerd/csv_100_5_40" every ::1 title "Linkerd"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_100_5_80.png"
set title "SMTs Latency - 100 Users, 5 RPU, 80 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_100_5_80" every ::1 title "Kubernetes", "istio/csv_100_5_80" every ::1 title "Istio", "linkerd/csv_100_5_80" every ::1 title "Linkerd"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_200_5_20.png"
set title "SMTs Latency - 200 Users, 5 RPU, 20 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_200_5_20" every ::1 title "Kubernetes", "istio/csv_200_5_20" every ::1 title "Istio", "linkerd/csv_200_5_20" every ::1 title "Linkerd"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_200_5_40.png"
set title "SMTs Latency - 200 Users, 5 RPU, 40 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_200_5_40" every ::1 title "Kubernetes", "istio/csv_200_5_40" every ::1 title "Istio", "linkerd/csv_200_5_40" every ::1 title "Linkerd"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_200_5_80.png"
set title "SMTs Latency - 200 Users, 5 RPU, 80 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_200_5_80" every ::1 title "Kubernetes", "istio/csv_200_5_80" every ::1 title "Istio", "linkerd/csv_200_5_80" every ::1 title "Linkerd"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_400_5_20.png"
set title "SMTs Latency - 400 Users, 5 RPU, 20 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_400_5_20" every ::1 title "Kubernetes", "istio/csv_400_5_20" every ::1 title "Istio", "linkerd/csv_400_5_20" every ::1 title "Linkerd"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_400_5_40.png"
set title "SMTs Latency - 400 Users, 5 RPU, 40 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_400_5_40" every ::1 title "Kubernetes", "istio/csv_400_5_40" every ::1 title "Istio", "linkerd/csv_400_5_40" every ::1 title "Linkerd"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_400_5_80.png"
set title "SMTs Latency - 400 Users, 5 RPU, 80 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_400_5_80" every ::1 title "Kubernetes", "istio/csv_400_5_80" every ::1 title "Istio", "linkerd/csv_400_5_80" every ::1 title "Linkerd"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_600_5_20.png"
set title "SMTs Latency - 600 Users, 5 RPU, 20 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_600_5_20" every ::1 title "Kubernetes", "istio/csv_600_5_20" every ::1 title "Istio", "linkerd/csv_600_5_20" every ::1 title "Linkerd"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_600_5_40.png"
set title "SMTs Latency - 600 Users, 5 RPU, 40 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_600_5_40" every ::1 title "Kubernetes", "istio/csv_600_5_40" every ::1 title "Istio", "linkerd/csv_600_5_40" every ::1 title "Linkerd"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_600_5_80.png"
set title "SMTs Latency - 600 Users, 5 RPU, 80 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_600_5_80" every ::1 title "Kubernetes", "istio/csv_600_5_80" every ::1 title "Istio", "linkerd/csv_600_5_80" every ::1 title "Linkerd"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_800_5_20.png"
set title "SMTs Latency - 800 Users, 5 RPU, 20 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_800_5_20" every ::1 title "Kubernetes", "istio/csv_800_5_20" every ::1 title "Istio", "linkerd/csv_800_5_20" every ::1 title "Linkerd"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_800_5_40.png"
set title "SMTs Latency - 800 Users, 5 RPU, 40 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_800_5_40" every ::1 title "Kubernetes", "istio/csv_800_5_40" every ::1 title "Istio", "linkerd/csv_800_5_40" every ::1 title "Linkerd"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_800_5_80.png"
set title "SMTs Latency - 800 Users, 5 RPU, 80 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_800_5_80" every ::1 title "Kubernetes", "istio/csv_800_5_80" every ::1 title "Istio", "linkerd/csv_800_5_80" every ::1 title "Linkerd"

#Next plot starts here
