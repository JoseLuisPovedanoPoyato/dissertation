set datafile separator ','
set terminal png size 700 
set output "istio_latency_services__service_.png"
set title "Istio - Latency _service_ Services"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"
plot "csv_100__request___service_" every ::1 title "100 users", "csv_200__request___service_" every ::1 title "200 users", "csv_400__request___service_" every ::1 title "400 users", "csv_600__request___service_" every ::1 title "600 users", "csv_800__request___service_" every ::1 title "800 users"

# Next Plot Starts here