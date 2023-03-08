set datafile separator ','
set terminal png size 700 
set output "istio_latency_users_100.png"
set title "Istio - Latency 100 Users"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"
plot "csv_100_10_10" every ::1 title "10 microservices", "csv_100_10_20" every ::1 title "20 microservices", "csv_100_10_40" every ::1 title "40 microservices", "csv_100_10_60" every ::1 title "60 microservices", "csv_100_10_80" every ::1 title "80 microservices"

# Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "istio_latency_users_200.png"
set title "Istio - Latency 200 Users"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"
plot "csv_200_10_10" every ::1 title "10 microservices", "csv_200_10_20" every ::1 title "20 microservices", "csv_200_10_40" every ::1 title "40 microservices", "csv_200_10_60" every ::1 title "60 microservices", "csv_200_10_80" every ::1 title "80 microservices"

# Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "istio_latency_users_400.png"
set title "Istio - Latency 400 Users"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"
plot "csv_400_10_10" every ::1 title "10 microservices", "csv_400_10_20" every ::1 title "20 microservices", "csv_400_10_40" every ::1 title "40 microservices", "csv_400_10_60" every ::1 title "60 microservices", "csv_400_10_80" every ::1 title "80 microservices"

# Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "istio_latency_users_600.png"
set title "Istio - Latency 600 Users"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"
plot "csv_600_10_10" every ::1 title "10 microservices", "csv_600_10_20" every ::1 title "20 microservices", "csv_600_10_40" every ::1 title "40 microservices", "csv_600_10_60" every ::1 title "60 microservices", "csv_600_10_80" every ::1 title "80 microservices"

# Next plot starts here
set datafile separator ','
set terminal png size 700 
set output "istio_latency_users_800.png"
set title "Istio - Latency 800 Users"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"
plot "csv_800_10_10" every ::1 title "10 microservices", "csv_800_10_20" every ::1 title "20 microservices", "csv_800_10_40" every ::1 title "40 microservices", "csv_800_10_60" every ::1 title "60 microservices", "csv_800_10_80" every ::1 title "80 microservices"

# Next plot starts here
