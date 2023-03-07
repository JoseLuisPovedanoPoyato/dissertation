set datafile separator ','
set terminal png size 700 
set output "smts_latency_100_1_10.png"
set title "SMTs Latency - 100 Users, 1 RPU, 10 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_100_1_10" every ::1 title "Kubernetes", "istio/csv_100_1_10" every ::1 title "Istio", "linkerd/csv_100_1_10" every ::1 title "Linkerd", "consul/csv_100_1_10" every ::1 title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_100_1_20.png"
set title "SMTs Latency - 100 Users, 1 RPU, 20 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_100_1_20" every ::1 title "Kubernetes", "istio/csv_100_1_20" every ::1 title "Istio", "linkerd/csv_100_1_20" every ::1 title "Linkerd", "consul/csv_100_1_20" every ::1 title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_100_1_40.png"
set title "SMTs Latency - 100 Users, 1 RPU, 40 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_100_1_40" every ::1 title "Kubernetes", "istio/csv_100_1_40" every ::1 title "Istio", "linkerd/csv_100_1_40" every ::1 title "Linkerd", "consul/csv_100_1_40" every ::1 title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_100_1_60.png"
set title "SMTs Latency - 100 Users, 1 RPU, 60 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_100_1_60" every ::1 title "Kubernetes", "istio/csv_100_1_60" every ::1 title "Istio", "linkerd/csv_100_1_60" every ::1 title "Linkerd", "consul/csv_100_1_60" every ::1 title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_100_1_80.png"
set title "SMTs Latency - 100 Users, 1 RPU, 80 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_100_1_80" every ::1 title "Kubernetes", "istio/csv_100_1_80" every ::1 title "Istio", "linkerd/csv_100_1_80" every ::1 title "Linkerd", "consul/csv_100_1_80" every ::1 title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_200_1_10.png"
set title "SMTs Latency - 200 Users, 1 RPU, 10 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_200_1_10" every ::1 title "Kubernetes", "istio/csv_200_1_10" every ::1 title "Istio", "linkerd/csv_200_1_10" every ::1 title "Linkerd", "consul/csv_200_1_10" every ::1 title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_200_1_20.png"
set title "SMTs Latency - 200 Users, 1 RPU, 20 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_200_1_20" every ::1 title "Kubernetes", "istio/csv_200_1_20" every ::1 title "Istio", "linkerd/csv_200_1_20" every ::1 title "Linkerd", "consul/csv_200_1_20" every ::1 title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_200_1_40.png"
set title "SMTs Latency - 200 Users, 1 RPU, 40 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_200_1_40" every ::1 title "Kubernetes", "istio/csv_200_1_40" every ::1 title "Istio", "linkerd/csv_200_1_40" every ::1 title "Linkerd", "consul/csv_200_1_40" every ::1 title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_200_1_60.png"
set title "SMTs Latency - 200 Users, 1 RPU, 60 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_200_1_60" every ::1 title "Kubernetes", "istio/csv_200_1_60" every ::1 title "Istio", "linkerd/csv_200_1_60" every ::1 title "Linkerd", "consul/csv_200_1_60" every ::1 title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_200_1_80.png"
set title "SMTs Latency - 200 Users, 1 RPU, 80 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_200_1_80" every ::1 title "Kubernetes", "istio/csv_200_1_80" every ::1 title "Istio", "linkerd/csv_200_1_80" every ::1 title "Linkerd", "consul/csv_200_1_80" every ::1 title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_400_1_10.png"
set title "SMTs Latency - 400 Users, 1 RPU, 10 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_400_1_10" every ::1 title "Kubernetes", "istio/csv_400_1_10" every ::1 title "Istio", "linkerd/csv_400_1_10" every ::1 title "Linkerd", "consul/csv_400_1_10" every ::1 title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_400_1_20.png"
set title "SMTs Latency - 400 Users, 1 RPU, 20 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_400_1_20" every ::1 title "Kubernetes", "istio/csv_400_1_20" every ::1 title "Istio", "linkerd/csv_400_1_20" every ::1 title "Linkerd", "consul/csv_400_1_20" every ::1 title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_400_1_40.png"
set title "SMTs Latency - 400 Users, 1 RPU, 40 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_400_1_40" every ::1 title "Kubernetes", "istio/csv_400_1_40" every ::1 title "Istio", "linkerd/csv_400_1_40" every ::1 title "Linkerd", "consul/csv_400_1_40" every ::1 title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_400_1_60.png"
set title "SMTs Latency - 400 Users, 1 RPU, 60 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_400_1_60" every ::1 title "Kubernetes", "istio/csv_400_1_60" every ::1 title "Istio", "linkerd/csv_400_1_60" every ::1 title "Linkerd", "consul/csv_400_1_60" every ::1 title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_400_1_80.png"
set title "SMTs Latency - 400 Users, 1 RPU, 80 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_400_1_80" every ::1 title "Kubernetes", "istio/csv_400_1_80" every ::1 title "Istio", "linkerd/csv_400_1_80" every ::1 title "Linkerd", "consul/csv_400_1_80" every ::1 title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_600_1_10.png"
set title "SMTs Latency - 600 Users, 1 RPU, 10 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_600_1_10" every ::1 title "Kubernetes", "istio/csv_600_1_10" every ::1 title "Istio", "linkerd/csv_600_1_10" every ::1 title "Linkerd", "consul/csv_600_1_10" every ::1 title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_600_1_20.png"
set title "SMTs Latency - 600 Users, 1 RPU, 20 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_600_1_20" every ::1 title "Kubernetes", "istio/csv_600_1_20" every ::1 title "Istio", "linkerd/csv_600_1_20" every ::1 title "Linkerd", "consul/csv_600_1_20" every ::1 title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_600_1_40.png"
set title "SMTs Latency - 600 Users, 1 RPU, 40 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_600_1_40" every ::1 title "Kubernetes", "istio/csv_600_1_40" every ::1 title "Istio", "linkerd/csv_600_1_40" every ::1 title "Linkerd", "consul/csv_600_1_40" every ::1 title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_600_1_60.png"
set title "SMTs Latency - 600 Users, 1 RPU, 60 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_600_1_60" every ::1 title "Kubernetes", "istio/csv_600_1_60" every ::1 title "Istio", "linkerd/csv_600_1_60" every ::1 title "Linkerd", "consul/csv_600_1_60" every ::1 title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_600_1_80.png"
set title "SMTs Latency - 600 Users, 1 RPU, 80 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_600_1_80" every ::1 title "Kubernetes", "istio/csv_600_1_80" every ::1 title "Istio", "linkerd/csv_600_1_80" every ::1 title "Linkerd", "consul/csv_600_1_80" every ::1 title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_800_1_10.png"
set title "SMTs Latency - 800 Users, 1 RPU, 10 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_800_1_10" every ::1 title "Kubernetes", "istio/csv_800_1_10" every ::1 title "Istio", "linkerd/csv_800_1_10" every ::1 title "Linkerd", "consul/csv_800_1_10" every ::1 title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_800_1_20.png"
set title "SMTs Latency - 800 Users, 1 RPU, 20 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_800_1_20" every ::1 title "Kubernetes", "istio/csv_800_1_20" every ::1 title "Istio", "linkerd/csv_800_1_20" every ::1 title "Linkerd", "consul/csv_800_1_20" every ::1 title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_800_1_40.png"
set title "SMTs Latency - 800 Users, 1 RPU, 40 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_800_1_40" every ::1 title "Kubernetes", "istio/csv_800_1_40" every ::1 title "Istio", "linkerd/csv_800_1_40" every ::1 title "Linkerd", "consul/csv_800_1_40" every ::1 title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_800_1_60.png"
set title "SMTs Latency - 800 Users, 1 RPU, 60 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_800_1_60" every ::1 title "Kubernetes", "istio/csv_800_1_60" every ::1 title "Istio", "linkerd/csv_800_1_60" every ::1 title "Linkerd", "consul/csv_800_1_60" every ::1 title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_800_1_80.png"
set title "SMTs Latency - 800 Users, 1 RPU, 80 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set xtics rotate by -45
plot "kubernetes/csv_800_1_80" every ::1 title "Kubernetes", "istio/csv_800_1_80" every ::1 title "Istio", "linkerd/csv_800_1_80" every ::1 title "Linkerd", "consul/csv_800_1_80" every ::1 title "Consul"

#Next plot starts here
