set datafile separator ','

set terminal png size 700 
set output "kubernetes_latency_services_10.png"
set title "Kubernetes - Latency 10 Services"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

plot "csv_100_10_10" every ::1 title "100 users", "csv_200_10_10" every ::1 title "200 users", "csv_400_10_10" every ::1 title "400 users", "csv_600_10_10" every ::1 title "600 users", "csv_800_10_10" every ::1 title "800 users"
set datafile separator ','

set terminal png size 700 
set output "kubernetes_latency_services_20.png"
set title "Kubernetes - Latency 20 Services"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

plot "csv_100_10_20" every ::1 title "100 users", "csv_200_10_20" every ::1 title "200 users", "csv_400_10_20" every ::1 title "400 users", "csv_600_10_20" every ::1 title "600 users", "csv_800_10_20" every ::1 title "800 users"
set datafile separator ','

set terminal png size 700 
set output "kubernetes_latency_services_40.png"
set title "Kubernetes - Latency 40 Services"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

plot "csv_100_10_40" every ::1 title "100 users", "csv_200_10_40" every ::1 title "200 users", "csv_400_10_40" every ::1 title "400 users", "csv_600_10_40" every ::1 title "600 users", "csv_800_10_40" every ::1 title "800 users"
