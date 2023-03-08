set datafile separator ','
set terminal png size 700 
set output "linkerd_latency_users_100.png"
set title "Linkerd - Latency 100 Users"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"
plot "csv_100_3_10" every ::1 title "10 microservices", "csv_100_3_20" every ::1 title "20 microservices", "csv_100_3_40" every ::1 title "40 microservices", "csv_100_3_60" every ::1 title "60 microservices", "csv_100_3_80" every ::1 title "80 microservices"
set datafile separator ','
set terminal png size 700 
set output "linkerd_latency_users_200.png"
set title "Linkerd - Latency 200 Users"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"
plot "csv_200_3_10" every ::1 title "10 microservices", "csv_200_3_20" every ::1 title "20 microservices", "csv_200_3_40" every ::1 title "40 microservices", "csv_200_3_60" every ::1 title "60 microservices", "csv_200_3_80" every ::1 title "80 microservices"
set datafile separator ','
set terminal png size 700 
set output "linkerd_latency_users_400.png"
set title "Linkerd - Latency 400 Users"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"
plot "csv_400_3_10" every ::1 title "10 microservices", "csv_400_3_20" every ::1 title "20 microservices", "csv_400_3_40" every ::1 title "40 microservices", "csv_400_3_60" every ::1 title "60 microservices", "csv_400_3_80" every ::1 title "80 microservices"
set datafile separator ','
set terminal png size 700 
set output "linkerd_latency_users_600.png"
set title "Linkerd - Latency 600 Users"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"
plot "csv_600_3_10" every ::1 title "10 microservices", "csv_600_3_20" every ::1 title "20 microservices", "csv_600_3_40" every ::1 title "40 microservices", "csv_600_3_60" every ::1 title "60 microservices", "csv_600_3_80" every ::1 title "80 microservices"
set datafile separator ','
set terminal png size 700 
set output "linkerd_latency_users_800.png"
set title "Linkerd - Latency 800 Users"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"
plot "csv_800_3_10" every ::1 title "10 microservices", "csv_800_3_20" every ::1 title "20 microservices", "csv_800_3_40" every ::1 title "40 microservices", "csv_800_3_60" every ::1 title "60 microservices", "csv_800_3_80" every ::1 title "80 microservices"
