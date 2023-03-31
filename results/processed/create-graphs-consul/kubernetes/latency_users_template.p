set datafile separator ','
set terminal png size 700 
set output "kubernetes_latency_users__user_.png"
set title "Kubernetes - Latency _user_ Users"
set size ratio 0.75 
set grid
set xlabel "Percentage Served (%)"
set ylabel "Response Time (ms)"
plot "csv__user___request__10" every ::1 title "10 microservices", "csv__user___request__20" every ::1 title "20 microservices", "csv__user___request__40" every ::1 title "40 microservices", "csv__user___request__60" every ::1 title "60 microservices", "csv__user___request__80" every ::1 title "80 microservices"