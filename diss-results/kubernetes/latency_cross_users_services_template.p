set datafile separator ','
set terminal png size 700 
set output "kubernetes_latency__request__cross_comp__mic_.png"
set title "Kubernetes - Latency Comparison _request_ RPUs, _mic_ and _doublemic_ Microservices"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"

plot "csv_100__request___doublemic_" every ::1 title "100 users, _doublemic_ services", "csv_200__request___mic_" every ::1 title "200 users, _mic_ services", "csv_200__request___doublemic_" every ::1 title "200 users, _doublemic_ services", "csv_400__request___mic_" every ::1 title "400 users, _mic_ services", "csv_400__request___doublemic_" every ::1 title "400 users, _doublemic_ services", "csv_800__request___mic_" every ::1 title "800 users, _mic_ services" 

# Next plot starts here