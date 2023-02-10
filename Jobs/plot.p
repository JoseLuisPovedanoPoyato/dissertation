set datafile separator ','

set terminal png size 600 
set output "results.png"
set title "Kubernetes Latency"
set size ratio 0.75 
set grid
set xlabel "Requests"
set ylabel "Response Time (ms)"

plot "csv_1000_1_10.csv" using 9 smooth sbezier with lines title "1000 users - 10 microservices"