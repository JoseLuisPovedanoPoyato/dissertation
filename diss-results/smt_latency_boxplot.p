set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_100_5_20" using 1:2, "istio/csv_100_5_20" using 1:2, "linkerd/csv_100_5_20" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_100_5_20.png"
set title "SMTs Latency - 100 Users, 5 RPU, 20 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_100_5_20" using (1):$2:xtic("100 Users") title "Kubernetes", "istio/csv_100_5_20" using (1):$2:xtic("100 Users") title "Istio", "linkerd/csv_100_5_20" using (1):$2:xtic("100 Users") title "Linkerd"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_100_5_40" using 1:2, "istio/csv_100_5_40" using 1:2, "linkerd/csv_100_5_40" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_100_5_40.png"
set title "SMTs Latency - 100 Users, 5 RPU, 40 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_100_5_40" using (1):$2:xtic("100 Users") title "Kubernetes", "istio/csv_100_5_40" using (1):$2:xtic("100 Users") title "Istio", "linkerd/csv_100_5_40" using (1):$2:xtic("100 Users") title "Linkerd"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_100_5_80" using 1:2, "istio/csv_100_5_80" using 1:2, "linkerd/csv_100_5_80" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_100_5_80.png"
set title "SMTs Latency - 100 Users, 5 RPU, 80 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_100_5_80" using (1):$2:xtic("100 Users") title "Kubernetes", "istio/csv_100_5_80" using (1):$2:xtic("100 Users") title "Istio", "linkerd/csv_100_5_80" using (1):$2:xtic("100 Users") title "Linkerd"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_200_5_20" using 1:2, "istio/csv_200_5_20" using 1:2, "linkerd/csv_200_5_20" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_200_5_20.png"
set title "SMTs Latency - 200 Users, 5 RPU, 20 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_200_5_20" using (1):$2:xtic("100 Users") title "Kubernetes", "istio/csv_200_5_20" using (1):$2:xtic("100 Users") title "Istio", "linkerd/csv_200_5_20" using (1):$2:xtic("100 Users") title "Linkerd"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_200_5_40" using 1:2, "istio/csv_200_5_40" using 1:2, "linkerd/csv_200_5_40" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_200_5_40.png"
set title "SMTs Latency - 200 Users, 5 RPU, 40 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_200_5_40" using (1):$2:xtic("100 Users") title "Kubernetes", "istio/csv_200_5_40" using (1):$2:xtic("100 Users") title "Istio", "linkerd/csv_200_5_40" using (1):$2:xtic("100 Users") title "Linkerd"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_200_5_80" using 1:2, "istio/csv_200_5_80" using 1:2, "linkerd/csv_200_5_80" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_200_5_80.png"
set title "SMTs Latency - 200 Users, 5 RPU, 80 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_200_5_80" using (1):$2:xtic("100 Users") title "Kubernetes", "istio/csv_200_5_80" using (1):$2:xtic("100 Users") title "Istio", "linkerd/csv_200_5_80" using (1):$2:xtic("100 Users") title "Linkerd"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_400_5_20" using 1:2, "istio/csv_400_5_20" using 1:2, "linkerd/csv_400_5_20" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_400_5_20.png"
set title "SMTs Latency - 400 Users, 5 RPU, 20 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_400_5_20" using (1):$2:xtic("100 Users") title "Kubernetes", "istio/csv_400_5_20" using (1):$2:xtic("100 Users") title "Istio", "linkerd/csv_400_5_20" using (1):$2:xtic("100 Users") title "Linkerd"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_400_5_40" using 1:2, "istio/csv_400_5_40" using 1:2, "linkerd/csv_400_5_40" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_400_5_40.png"
set title "SMTs Latency - 400 Users, 5 RPU, 40 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_400_5_40" using (1):$2:xtic("100 Users") title "Kubernetes", "istio/csv_400_5_40" using (1):$2:xtic("100 Users") title "Istio", "linkerd/csv_400_5_40" using (1):$2:xtic("100 Users") title "Linkerd"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_400_5_80" using 1:2, "istio/csv_400_5_80" using 1:2, "linkerd/csv_400_5_80" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_400_5_80.png"
set title "SMTs Latency - 400 Users, 5 RPU, 80 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_400_5_80" using (1):$2:xtic("100 Users") title "Kubernetes", "istio/csv_400_5_80" using (1):$2:xtic("100 Users") title "Istio", "linkerd/csv_400_5_80" using (1):$2:xtic("100 Users") title "Linkerd"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_600_5_20" using 1:2, "istio/csv_600_5_20" using 1:2, "linkerd/csv_600_5_20" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_600_5_20.png"
set title "SMTs Latency - 600 Users, 5 RPU, 20 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_600_5_20" using (1):$2:xtic("100 Users") title "Kubernetes", "istio/csv_600_5_20" using (1):$2:xtic("100 Users") title "Istio", "linkerd/csv_600_5_20" using (1):$2:xtic("100 Users") title "Linkerd"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_600_5_40" using 1:2, "istio/csv_600_5_40" using 1:2, "linkerd/csv_600_5_40" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_600_5_40.png"
set title "SMTs Latency - 600 Users, 5 RPU, 40 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_600_5_40" using (1):$2:xtic("100 Users") title "Kubernetes", "istio/csv_600_5_40" using (1):$2:xtic("100 Users") title "Istio", "linkerd/csv_600_5_40" using (1):$2:xtic("100 Users") title "Linkerd"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_600_5_80" using 1:2, "istio/csv_600_5_80" using 1:2, "linkerd/csv_600_5_80" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_600_5_80.png"
set title "SMTs Latency - 600 Users, 5 RPU, 80 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_600_5_80" using (1):$2:xtic("100 Users") title "Kubernetes", "istio/csv_600_5_80" using (1):$2:xtic("100 Users") title "Istio", "linkerd/csv_600_5_80" using (1):$2:xtic("100 Users") title "Linkerd"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_800_5_20" using 1:2, "istio/csv_800_5_20" using 1:2, "linkerd/csv_800_5_20" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_800_5_20.png"
set title "SMTs Latency - 800 Users, 5 RPU, 20 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_800_5_20" using (1):$2:xtic("100 Users") title "Kubernetes", "istio/csv_800_5_20" using (1):$2:xtic("100 Users") title "Istio", "linkerd/csv_800_5_20" using (1):$2:xtic("100 Users") title "Linkerd"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_800_5_40" using 1:2, "istio/csv_800_5_40" using 1:2, "linkerd/csv_800_5_40" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_800_5_40.png"
set title "SMTs Latency - 800 Users, 5 RPU, 40 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_800_5_40" using (1):$2:xtic("100 Users") title "Kubernetes", "istio/csv_800_5_40" using (1):$2:xtic("100 Users") title "Istio", "linkerd/csv_800_5_40" using (1):$2:xtic("100 Users") title "Linkerd"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_800_5_80" using 1:2, "istio/csv_800_5_80" using 1:2, "linkerd/csv_800_5_80" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_800_5_80.png"
set title "SMTs Latency - 800 Users, 5 RPU, 80 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_800_5_80" using (1):$2:xtic("100 Users") title "Kubernetes", "istio/csv_800_5_80" using (1):$2:xtic("100 Users") title "Istio", "linkerd/csv_800_5_80" using (1):$2:xtic("100 Users") title "Linkerd"

#Next plot starts here
