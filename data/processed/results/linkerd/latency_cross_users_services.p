set datafile separator ','
set terminal png size 700 
set output "linkerd_latency_3_cross_comp_40.png"
set title "Linkerd - Latency Comparison 3 RPUs, 40 and 80 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

plot "csv_100_3_80" every ::1 title "100 users, 80 services", "csv_200_3_40" every ::1 title "200 users, 40 services", "csv_200_3_80" every ::1 title "200 users, 80 services", "csv_400_3_40" every ::1 title "400 users, 40 services", "csv_400_3_80" every ::1 title "400 users, 80 services", "csv_800_3_40" every ::1 title "800 users, 40 services" 

# Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "linkerd_latency_5_cross_comp_40.png"
set title "Linkerd - Latency Comparison 5 RPUs, 40 and 80 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

plot "csv_100_5_80" every ::1 title "100 users, 80 services", "csv_200_5_40" every ::1 title "200 users, 40 services", "csv_200_5_80" every ::1 title "200 users, 80 services", "csv_400_5_40" every ::1 title "400 users, 40 services", "csv_400_5_80" every ::1 title "400 users, 80 services", "csv_800_5_40" every ::1 title "800 users, 40 services" 

# Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "linkerd_latency_10_cross_comp_40.png"
set title "Linkerd - Latency Comparison 10 RPUs, 40 and 80 Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

plot "csv_100_10_80" every ::1 title "100 users, 80 services", "csv_200_10_40" every ::1 title "200 users, 40 services", "csv_200_10_80" every ::1 title "200 users, 80 services", "csv_400_10_40" every ::1 title "400 users, 40 services", "csv_400_10_80" every ::1 title "400 users, 80 services", "csv_800_10_40" every ::1 title "800 users, 40 services" 

# Next plot starts here
