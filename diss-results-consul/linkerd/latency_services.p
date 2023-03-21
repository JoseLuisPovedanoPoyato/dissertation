set datafile separator ','

set terminal png size 700 
set output "linkerd_latency_services_10.png"
set title "Linkerd - Latency 10 Services"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

plot "csv_100_1_10" every ::1 title "100 users", "csv_200_1_10" every ::1 title "200 users", "csv_400_1_10" every ::1 title "400 users", "csv_600_1_10" every ::1 title "600 users", "csv_800_1_10" every ::1 title "800 users"
set datafile separator ','

set terminal png size 700 
set output "linkerd_latency_services_20.png"
set title "Linkerd - Latency 20 Services"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

plot "csv_100_1_20" every ::1 title "100 users", "csv_200_1_20" every ::1 title "200 users", "csv_400_1_20" every ::1 title "400 users", "csv_600_1_20" every ::1 title "600 users", "csv_800_1_20" every ::1 title "800 users"
set datafile separator ','

set terminal png size 700 
set output "linkerd_latency_services_40.png"
set title "Linkerd - Latency 40 Services"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

plot "csv_100_1_40" every ::1 title "100 users", "csv_200_1_40" every ::1 title "200 users", "csv_400_1_40" every ::1 title "400 users", "csv_600_1_40" every ::1 title "600 users", "csv_800_1_40" every ::1 title "800 users"
