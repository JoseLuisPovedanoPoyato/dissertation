set datafile separator ','
set terminal png size 700 
set output "smts_latency_100_10_10.png"
set title "SMTs Latency - 100 Users, 10 RPU, 10 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set logscale y 10

set xtics rotate by -45
plot "kubernetes/csv_100_10_10" every ::1 lc rgb "#1b9e77" title "Kubernetes", "istio/csv_100_10_10" every ::1 lc rgb "#7570b3" title "Istio", "linkerd/csv_100_10_10" every ::1 lc rgb "#d95f02" title "Linkerd", "consul/csv_100_10_10" every ::1 lc rgb "#e69f00" title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_100_10_20.png"
set title "SMTs Latency - 100 Users, 10 RPU, 20 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set logscale y 10

set xtics rotate by -45
plot "kubernetes/csv_100_10_20" every ::1 lc rgb "#1b9e77" title "Kubernetes", "istio/csv_100_10_20" every ::1 lc rgb "#7570b3" title "Istio", "linkerd/csv_100_10_20" every ::1 lc rgb "#d95f02" title "Linkerd", "consul/csv_100_10_20" every ::1 lc rgb "#e69f00" title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_100_10_40.png"
set title "SMTs Latency - 100 Users, 10 RPU, 40 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set logscale y 10

set xtics rotate by -45
plot "kubernetes/csv_100_10_40" every ::1 lc rgb "#1b9e77" title "Kubernetes", "istio/csv_100_10_40" every ::1 lc rgb "#7570b3" title "Istio", "linkerd/csv_100_10_40" every ::1 lc rgb "#d95f02" title "Linkerd", "consul/csv_100_10_40" every ::1 lc rgb "#e69f00" title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_200_10_10.png"
set title "SMTs Latency - 200 Users, 10 RPU, 10 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set logscale y 10

set xtics rotate by -45
plot "kubernetes/csv_200_10_10" every ::1 lc rgb "#1b9e77" title "Kubernetes", "istio/csv_200_10_10" every ::1 lc rgb "#7570b3" title "Istio", "linkerd/csv_200_10_10" every ::1 lc rgb "#d95f02" title "Linkerd", "consul/csv_200_10_10" every ::1 lc rgb "#e69f00" title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_200_10_20.png"
set title "SMTs Latency - 200 Users, 10 RPU, 20 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set logscale y 10

set xtics rotate by -45
plot "kubernetes/csv_200_10_20" every ::1 lc rgb "#1b9e77" title "Kubernetes", "istio/csv_200_10_20" every ::1 lc rgb "#7570b3" title "Istio", "linkerd/csv_200_10_20" every ::1 lc rgb "#d95f02" title "Linkerd", "consul/csv_200_10_20" every ::1 lc rgb "#e69f00" title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_200_10_40.png"
set title "SMTs Latency - 200 Users, 10 RPU, 40 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set logscale y 10

set xtics rotate by -45
plot "kubernetes/csv_200_10_40" every ::1 lc rgb "#1b9e77" title "Kubernetes", "istio/csv_200_10_40" every ::1 lc rgb "#7570b3" title "Istio", "linkerd/csv_200_10_40" every ::1 lc rgb "#d95f02" title "Linkerd", "consul/csv_200_10_40" every ::1 lc rgb "#e69f00" title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_400_10_10.png"
set title "SMTs Latency - 400 Users, 10 RPU, 10 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set logscale y 10

set xtics rotate by -45
plot "kubernetes/csv_400_10_10" every ::1 lc rgb "#1b9e77" title "Kubernetes", "istio/csv_400_10_10" every ::1 lc rgb "#7570b3" title "Istio", "linkerd/csv_400_10_10" every ::1 lc rgb "#d95f02" title "Linkerd", "consul/csv_400_10_10" every ::1 lc rgb "#e69f00" title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_400_10_20.png"
set title "SMTs Latency - 400 Users, 10 RPU, 20 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set logscale y 10

set xtics rotate by -45
plot "kubernetes/csv_400_10_20" every ::1 lc rgb "#1b9e77" title "Kubernetes", "istio/csv_400_10_20" every ::1 lc rgb "#7570b3" title "Istio", "linkerd/csv_400_10_20" every ::1 lc rgb "#d95f02" title "Linkerd", "consul/csv_400_10_20" every ::1 lc rgb "#e69f00" title "Consul"

#Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "smts_latency_400_10_40.png"
set title "SMTs Latency - 400 Users, 10 RPU, 40 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

set logscale y 10

set xtics rotate by -45
plot "kubernetes/csv_400_10_40" every ::1 lc rgb "#1b9e77" title "Kubernetes", "istio/csv_400_10_40" every ::1 lc rgb "#7570b3" title "Istio", "linkerd/csv_400_10_40" every ::1 lc rgb "#d95f02" title "Linkerd", "consul/csv_400_10_40" every ::1 lc rgb "#e69f00" title "Consul"

#Next plot starts here
