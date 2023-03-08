set datafile separator ','
set terminal png size 700 
set output "kubernetes_latency_users_100.png"
set title "Kubernetes - Latency 100 Users"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"
plot "csv_100_5_10" every ::1 title "10 microservices", "csv_100_5_20" every ::1 title "20 microservices", "csv_100_5_40" every ::1 title "40 microservices", "csv_100_5_60" every ::1 title "60 microservices", "csv_100_5_80" every ::1 title "80 microservices"
set datafile separator ','
set terminal png size 700 
set output "kubernetes_latency_users_200.png"
set title "Kubernetes - Latency 200 Users"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"
plot "csv_200_5_10" every ::1 title "10 microservices", "csv_200_5_20" every ::1 title "20 microservices", "csv_200_5_40" every ::1 title "40 microservices", "csv_200_5_60" every ::1 title "60 microservices", "csv_200_5_80" every ::1 title "80 microservices"
set datafile separator ','
set terminal png size 700 
set output "kubernetes_latency_users_400.png"
set title "Kubernetes - Latency 400 Users"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"
plot "csv_400_5_10" every ::1 title "10 microservices", "csv_400_5_20" every ::1 title "20 microservices", "csv_400_5_40" every ::1 title "40 microservices", "csv_400_5_60" every ::1 title "60 microservices", "csv_400_5_80" every ::1 title "80 microservices"
set datafile separator ','
set terminal png size 700 
set output "kubernetes_latency_users_600.png"
set title "Kubernetes - Latency 600 Users"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"
plot "csv_600_5_10" every ::1 title "10 microservices", "csv_600_5_20" every ::1 title "20 microservices", "csv_600_5_40" every ::1 title "40 microservices", "csv_600_5_60" every ::1 title "60 microservices", "csv_600_5_80" every ::1 title "80 microservices"
set datafile separator ','
set terminal png size 700 
set output "kubernetes_latency_users_800.png"
set title "Kubernetes - Latency 800 Users"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"
plot "csv_800_5_10" every ::1 title "10 microservices", "csv_800_5_20" every ::1 title "20 microservices", "csv_800_5_40" every ::1 title "40 microservices", "csv_800_5_60" every ::1 title "60 microservices", "csv_800_5_80" every ::1 title "80 microservices"
