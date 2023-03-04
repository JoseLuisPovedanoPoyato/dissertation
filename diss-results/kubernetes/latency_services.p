set datafile separator ','

set terminal png size 700 
set output "kubernetes_latency_services_10.png"
set title "Kubernetes - Latency 10 Services"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

plot "csv_100_3_10" every ::1 title "100 users", "csv_200_3_10" every ::1 title "200 users", "csv_400_3_10" every ::1 title "400 users", "csv_600_3_10" every ::1 title "600 users", "csv_800_3_10" every ::1 title "800 users"
set datafile separator ','

set terminal png size 700 
set output "kubernetes_latency_services_20.png"
set title "Kubernetes - Latency 20 Services"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

plot "csv_100_3_20" every ::1 title "100 users", "csv_200_3_20" every ::1 title "200 users", "csv_400_3_20" every ::1 title "400 users", "csv_600_3_20" every ::1 title "600 users", "csv_800_3_20" every ::1 title "800 users"
set datafile separator ','

set terminal png size 700 
set output "kubernetes_latency_services_40.png"
set title "Kubernetes - Latency 40 Services"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

plot "csv_100_3_40" every ::1 title "100 users", "csv_200_3_40" every ::1 title "200 users", "csv_400_3_40" every ::1 title "400 users", "csv_600_3_40" every ::1 title "600 users", "csv_800_3_40" every ::1 title "800 users"
set datafile separator ','

set terminal png size 700 
set output "kubernetes_latency_services_60.png"
set title "Kubernetes - Latency 60 Services"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

plot "csv_100_3_60" every ::1 title "100 users", "csv_200_3_60" every ::1 title "200 users", "csv_400_3_60" every ::1 title "400 users", "csv_600_3_60" every ::1 title "600 users", "csv_800_3_60" every ::1 title "800 users"
set datafile separator ','

set terminal png size 700 
set output "kubernetes_latency_services_80.png"
set title "Kubernetes - Latency 80 Services"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

plot "csv_100_3_80" every ::1 title "100 users", "csv_200_3_80" every ::1 title "200 users", "csv_400_3_80" every ::1 title "400 users", "csv_600_3_80" every ::1 title "600 users", "csv_800_3_80" every ::1 title "800 users"
