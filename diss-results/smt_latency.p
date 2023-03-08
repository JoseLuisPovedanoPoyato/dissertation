set datafile separator ','
set terminal png size 700 
set output "smts_latency_100_3_20.png"
set title "SMTs Latency - 100 Users, 3 RPU, 20 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_100_3_20" every ::1 title "Kubernetes", "istio/csv_100_3_20" every ::1 title "Istio", "linkerd/csv_100_3_20" every ::1 title "Linkerd"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_100_3_40.png"
set title "SMTs Latency - 100 Users, 3 RPU, 40 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_100_3_40" every ::1 title "Kubernetes", "istio/csv_100_3_40" every ::1 title "Istio", "linkerd/csv_100_3_40" every ::1 title "Linkerd"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_100_3_80.png"
set title "SMTs Latency - 100 Users, 3 RPU, 80 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_100_3_80" every ::1 title "Kubernetes", "istio/csv_100_3_80" every ::1 title "Istio", "linkerd/csv_100_3_80" every ::1 title "Linkerd"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_200_3_20.png"
set title "SMTs Latency - 200 Users, 3 RPU, 20 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_200_3_20" every ::1 title "Kubernetes", "istio/csv_200_3_20" every ::1 title "Istio", "linkerd/csv_200_3_20" every ::1 title "Linkerd"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_200_3_40.png"
set title "SMTs Latency - 200 Users, 3 RPU, 40 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_200_3_40" every ::1 title "Kubernetes", "istio/csv_200_3_40" every ::1 title "Istio", "linkerd/csv_200_3_40" every ::1 title "Linkerd"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_200_3_80.png"
set title "SMTs Latency - 200 Users, 3 RPU, 80 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_200_3_80" every ::1 title "Kubernetes", "istio/csv_200_3_80" every ::1 title "Istio", "linkerd/csv_200_3_80" every ::1 title "Linkerd"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_400_3_20.png"
set title "SMTs Latency - 400 Users, 3 RPU, 20 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_400_3_20" every ::1 title "Kubernetes", "istio/csv_400_3_20" every ::1 title "Istio", "linkerd/csv_400_3_20" every ::1 title "Linkerd"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_400_3_40.png"
set title "SMTs Latency - 400 Users, 3 RPU, 40 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_400_3_40" every ::1 title "Kubernetes", "istio/csv_400_3_40" every ::1 title "Istio", "linkerd/csv_400_3_40" every ::1 title "Linkerd"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_400_3_80.png"
set title "SMTs Latency - 400 Users, 3 RPU, 80 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_400_3_80" every ::1 title "Kubernetes", "istio/csv_400_3_80" every ::1 title "Istio", "linkerd/csv_400_3_80" every ::1 title "Linkerd"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_600_3_20.png"
set title "SMTs Latency - 600 Users, 3 RPU, 20 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_600_3_20" every ::1 title "Kubernetes", "istio/csv_600_3_20" every ::1 title "Istio", "linkerd/csv_600_3_20" every ::1 title "Linkerd"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_600_3_40.png"
set title "SMTs Latency - 600 Users, 3 RPU, 40 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_600_3_40" every ::1 title "Kubernetes", "istio/csv_600_3_40" every ::1 title "Istio", "linkerd/csv_600_3_40" every ::1 title "Linkerd"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_600_3_80.png"
set title "SMTs Latency - 600 Users, 3 RPU, 80 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_600_3_80" every ::1 title "Kubernetes", "istio/csv_600_3_80" every ::1 title "Istio", "linkerd/csv_600_3_80" every ::1 title "Linkerd"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_800_3_20.png"
set title "SMTs Latency - 800 Users, 3 RPU, 20 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_800_3_20" every ::1 title "Kubernetes", "istio/csv_800_3_20" every ::1 title "Istio", "linkerd/csv_800_3_20" every ::1 title "Linkerd"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_800_3_40.png"
set title "SMTs Latency - 800 Users, 3 RPU, 40 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_800_3_40" every ::1 title "Kubernetes", "istio/csv_800_3_40" every ::1 title "Istio", "linkerd/csv_800_3_40" every ::1 title "Linkerd"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_800_3_80.png"
set title "SMTs Latency - 800 Users, 3 RPU, 80 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_800_3_80" every ::1 title "Kubernetes", "istio/csv_800_3_80" every ::1 title "Istio", "linkerd/csv_800_3_80" every ::1 title "Linkerd"

#Next plot starts here
