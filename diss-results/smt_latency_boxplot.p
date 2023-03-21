set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_100_3_10" using 1:2, "istio/csv_100_3_10" using 1:2, "linkerd/csv_100_3_10" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_100_3_10.png"
set title "SMTs Latency - 100 Users, 3 RPU, 10 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_100_3_10" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_100_3_10" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_100_3_10" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_100_3_20" using 1:2, "istio/csv_100_3_20" using 1:2, "linkerd/csv_100_3_20" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_100_3_20.png"
set title "SMTs Latency - 100 Users, 3 RPU, 20 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_100_3_20" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_100_3_20" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_100_3_20" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_100_3_40" using 1:2, "istio/csv_100_3_40" using 1:2, "linkerd/csv_100_3_40" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_100_3_40.png"
set title "SMTs Latency - 100 Users, 3 RPU, 40 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_100_3_40" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_100_3_40" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_100_3_40" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_100_3_60" using 1:2, "istio/csv_100_3_60" using 1:2, "linkerd/csv_100_3_60" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_100_3_60.png"
set title "SMTs Latency - 100 Users, 3 RPU, 60 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_100_3_60" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_100_3_60" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_100_3_60" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_100_3_80" using 1:2, "istio/csv_100_3_80" using 1:2, "linkerd/csv_100_3_80" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_100_3_80.png"
set title "SMTs Latency - 100 Users, 3 RPU, 80 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_100_3_80" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_100_3_80" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_100_3_80" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_100_5_10" using 1:2, "istio/csv_100_5_10" using 1:2, "linkerd/csv_100_5_10" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_100_5_10.png"
set title "SMTs Latency - 100 Users, 5 RPU, 10 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_100_5_10" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_100_5_10" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_100_5_10" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
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
plot "kubernetes/csv_100_5_20" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_100_5_20" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_100_5_20" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

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
plot "kubernetes/csv_100_5_40" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_100_5_40" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_100_5_40" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_100_5_60" using 1:2, "istio/csv_100_5_60" using 1:2, "linkerd/csv_100_5_60" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_100_5_60.png"
set title "SMTs Latency - 100 Users, 5 RPU, 60 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_100_5_60" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_100_5_60" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_100_5_60" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

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
plot "kubernetes/csv_100_5_80" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_100_5_80" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_100_5_80" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_100_10_10" using 1:2, "istio/csv_100_10_10" using 1:2, "linkerd/csv_100_10_10" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_100_10_10.png"
set title "SMTs Latency - 100 Users, 10 RPU, 10 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_100_10_10" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_100_10_10" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_100_10_10" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_100_10_20" using 1:2, "istio/csv_100_10_20" using 1:2, "linkerd/csv_100_10_20" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_100_10_20.png"
set title "SMTs Latency - 100 Users, 10 RPU, 20 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_100_10_20" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_100_10_20" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_100_10_20" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_100_10_40" using 1:2, "istio/csv_100_10_40" using 1:2, "linkerd/csv_100_10_40" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_100_10_40.png"
set title "SMTs Latency - 100 Users, 10 RPU, 40 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_100_10_40" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_100_10_40" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_100_10_40" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_100_10_60" using 1:2, "istio/csv_100_10_60" using 1:2, "linkerd/csv_100_10_60" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_100_10_60.png"
set title "SMTs Latency - 100 Users, 10 RPU, 60 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_100_10_60" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_100_10_60" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_100_10_60" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_100_10_80" using 1:2, "istio/csv_100_10_80" using 1:2, "linkerd/csv_100_10_80" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_100_10_80.png"
set title "SMTs Latency - 100 Users, 10 RPU, 80 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_100_10_80" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_100_10_80" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_100_10_80" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_200_3_10" using 1:2, "istio/csv_200_3_10" using 1:2, "linkerd/csv_200_3_10" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_200_3_10.png"
set title "SMTs Latency - 200 Users, 3 RPU, 10 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_200_3_10" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_200_3_10" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_200_3_10" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_200_3_20" using 1:2, "istio/csv_200_3_20" using 1:2, "linkerd/csv_200_3_20" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_200_3_20.png"
set title "SMTs Latency - 200 Users, 3 RPU, 20 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_200_3_20" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_200_3_20" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_200_3_20" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_200_3_40" using 1:2, "istio/csv_200_3_40" using 1:2, "linkerd/csv_200_3_40" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_200_3_40.png"
set title "SMTs Latency - 200 Users, 3 RPU, 40 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_200_3_40" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_200_3_40" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_200_3_40" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_200_3_60" using 1:2, "istio/csv_200_3_60" using 1:2, "linkerd/csv_200_3_60" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_200_3_60.png"
set title "SMTs Latency - 200 Users, 3 RPU, 60 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_200_3_60" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_200_3_60" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_200_3_60" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_200_3_80" using 1:2, "istio/csv_200_3_80" using 1:2, "linkerd/csv_200_3_80" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_200_3_80.png"
set title "SMTs Latency - 200 Users, 3 RPU, 80 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_200_3_80" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_200_3_80" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_200_3_80" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_200_5_10" using 1:2, "istio/csv_200_5_10" using 1:2, "linkerd/csv_200_5_10" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_200_5_10.png"
set title "SMTs Latency - 200 Users, 5 RPU, 10 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_200_5_10" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_200_5_10" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_200_5_10" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

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
plot "kubernetes/csv_200_5_20" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_200_5_20" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_200_5_20" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

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
plot "kubernetes/csv_200_5_40" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_200_5_40" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_200_5_40" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_200_5_60" using 1:2, "istio/csv_200_5_60" using 1:2, "linkerd/csv_200_5_60" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_200_5_60.png"
set title "SMTs Latency - 200 Users, 5 RPU, 60 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_200_5_60" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_200_5_60" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_200_5_60" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

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
plot "kubernetes/csv_200_5_80" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_200_5_80" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_200_5_80" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_200_10_10" using 1:2, "istio/csv_200_10_10" using 1:2, "linkerd/csv_200_10_10" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_200_10_10.png"
set title "SMTs Latency - 200 Users, 10 RPU, 10 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_200_10_10" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_200_10_10" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_200_10_10" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_200_10_20" using 1:2, "istio/csv_200_10_20" using 1:2, "linkerd/csv_200_10_20" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_200_10_20.png"
set title "SMTs Latency - 200 Users, 10 RPU, 20 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_200_10_20" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_200_10_20" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_200_10_20" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_200_10_40" using 1:2, "istio/csv_200_10_40" using 1:2, "linkerd/csv_200_10_40" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_200_10_40.png"
set title "SMTs Latency - 200 Users, 10 RPU, 40 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_200_10_40" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_200_10_40" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_200_10_40" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_200_10_60" using 1:2, "istio/csv_200_10_60" using 1:2, "linkerd/csv_200_10_60" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_200_10_60.png"
set title "SMTs Latency - 200 Users, 10 RPU, 60 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_200_10_60" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_200_10_60" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_200_10_60" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_200_10_80" using 1:2, "istio/csv_200_10_80" using 1:2, "linkerd/csv_200_10_80" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_200_10_80.png"
set title "SMTs Latency - 200 Users, 10 RPU, 80 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_200_10_80" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_200_10_80" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_200_10_80" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_400_3_10" using 1:2, "istio/csv_400_3_10" using 1:2, "linkerd/csv_400_3_10" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_400_3_10.png"
set title "SMTs Latency - 400 Users, 3 RPU, 10 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_400_3_10" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_400_3_10" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_400_3_10" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_400_3_20" using 1:2, "istio/csv_400_3_20" using 1:2, "linkerd/csv_400_3_20" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_400_3_20.png"
set title "SMTs Latency - 400 Users, 3 RPU, 20 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_400_3_20" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_400_3_20" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_400_3_20" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_400_3_40" using 1:2, "istio/csv_400_3_40" using 1:2, "linkerd/csv_400_3_40" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_400_3_40.png"
set title "SMTs Latency - 400 Users, 3 RPU, 40 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_400_3_40" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_400_3_40" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_400_3_40" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_400_3_60" using 1:2, "istio/csv_400_3_60" using 1:2, "linkerd/csv_400_3_60" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_400_3_60.png"
set title "SMTs Latency - 400 Users, 3 RPU, 60 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_400_3_60" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_400_3_60" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_400_3_60" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_400_3_80" using 1:2, "istio/csv_400_3_80" using 1:2, "linkerd/csv_400_3_80" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_400_3_80.png"
set title "SMTs Latency - 400 Users, 3 RPU, 80 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_400_3_80" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_400_3_80" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_400_3_80" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_400_5_10" using 1:2, "istio/csv_400_5_10" using 1:2, "linkerd/csv_400_5_10" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_400_5_10.png"
set title "SMTs Latency - 400 Users, 5 RPU, 10 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_400_5_10" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_400_5_10" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_400_5_10" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

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
plot "kubernetes/csv_400_5_20" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_400_5_20" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_400_5_20" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

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
plot "kubernetes/csv_400_5_40" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_400_5_40" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_400_5_40" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_400_5_60" using 1:2, "istio/csv_400_5_60" using 1:2, "linkerd/csv_400_5_60" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_400_5_60.png"
set title "SMTs Latency - 400 Users, 5 RPU, 60 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_400_5_60" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_400_5_60" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_400_5_60" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

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
plot "kubernetes/csv_400_5_80" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_400_5_80" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_400_5_80" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_400_10_10" using 1:2, "istio/csv_400_10_10" using 1:2, "linkerd/csv_400_10_10" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_400_10_10.png"
set title "SMTs Latency - 400 Users, 10 RPU, 10 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_400_10_10" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_400_10_10" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_400_10_10" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_400_10_20" using 1:2, "istio/csv_400_10_20" using 1:2, "linkerd/csv_400_10_20" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_400_10_20.png"
set title "SMTs Latency - 400 Users, 10 RPU, 20 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_400_10_20" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_400_10_20" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_400_10_20" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_400_10_40" using 1:2, "istio/csv_400_10_40" using 1:2, "linkerd/csv_400_10_40" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_400_10_40.png"
set title "SMTs Latency - 400 Users, 10 RPU, 40 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_400_10_40" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_400_10_40" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_400_10_40" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_400_10_60" using 1:2, "istio/csv_400_10_60" using 1:2, "linkerd/csv_400_10_60" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_400_10_60.png"
set title "SMTs Latency - 400 Users, 10 RPU, 60 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_400_10_60" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_400_10_60" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_400_10_60" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_400_10_80" using 1:2, "istio/csv_400_10_80" using 1:2, "linkerd/csv_400_10_80" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_400_10_80.png"
set title "SMTs Latency - 400 Users, 10 RPU, 80 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_400_10_80" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_400_10_80" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_400_10_80" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_600_3_10" using 1:2, "istio/csv_600_3_10" using 1:2, "linkerd/csv_600_3_10" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_600_3_10.png"
set title "SMTs Latency - 600 Users, 3 RPU, 10 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_600_3_10" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_600_3_10" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_600_3_10" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_600_3_20" using 1:2, "istio/csv_600_3_20" using 1:2, "linkerd/csv_600_3_20" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_600_3_20.png"
set title "SMTs Latency - 600 Users, 3 RPU, 20 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_600_3_20" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_600_3_20" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_600_3_20" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_600_3_40" using 1:2, "istio/csv_600_3_40" using 1:2, "linkerd/csv_600_3_40" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_600_3_40.png"
set title "SMTs Latency - 600 Users, 3 RPU, 40 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_600_3_40" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_600_3_40" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_600_3_40" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_600_3_60" using 1:2, "istio/csv_600_3_60" using 1:2, "linkerd/csv_600_3_60" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_600_3_60.png"
set title "SMTs Latency - 600 Users, 3 RPU, 60 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_600_3_60" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_600_3_60" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_600_3_60" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_600_3_80" using 1:2, "istio/csv_600_3_80" using 1:2, "linkerd/csv_600_3_80" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_600_3_80.png"
set title "SMTs Latency - 600 Users, 3 RPU, 80 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_600_3_80" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_600_3_80" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_600_3_80" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_600_5_10" using 1:2, "istio/csv_600_5_10" using 1:2, "linkerd/csv_600_5_10" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_600_5_10.png"
set title "SMTs Latency - 600 Users, 5 RPU, 10 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_600_5_10" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_600_5_10" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_600_5_10" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

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
plot "kubernetes/csv_600_5_20" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_600_5_20" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_600_5_20" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

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
plot "kubernetes/csv_600_5_40" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_600_5_40" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_600_5_40" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_600_5_60" using 1:2, "istio/csv_600_5_60" using 1:2, "linkerd/csv_600_5_60" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_600_5_60.png"
set title "SMTs Latency - 600 Users, 5 RPU, 60 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_600_5_60" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_600_5_60" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_600_5_60" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

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
plot "kubernetes/csv_600_5_80" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_600_5_80" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_600_5_80" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_600_10_10" using 1:2, "istio/csv_600_10_10" using 1:2, "linkerd/csv_600_10_10" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_600_10_10.png"
set title "SMTs Latency - 600 Users, 10 RPU, 10 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_600_10_10" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_600_10_10" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_600_10_10" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_600_10_20" using 1:2, "istio/csv_600_10_20" using 1:2, "linkerd/csv_600_10_20" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_600_10_20.png"
set title "SMTs Latency - 600 Users, 10 RPU, 20 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_600_10_20" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_600_10_20" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_600_10_20" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_600_10_40" using 1:2, "istio/csv_600_10_40" using 1:2, "linkerd/csv_600_10_40" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_600_10_40.png"
set title "SMTs Latency - 600 Users, 10 RPU, 40 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_600_10_40" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_600_10_40" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_600_10_40" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_600_10_60" using 1:2, "istio/csv_600_10_60" using 1:2, "linkerd/csv_600_10_60" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_600_10_60.png"
set title "SMTs Latency - 600 Users, 10 RPU, 60 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_600_10_60" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_600_10_60" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_600_10_60" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_600_10_80" using 1:2, "istio/csv_600_10_80" using 1:2, "linkerd/csv_600_10_80" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_600_10_80.png"
set title "SMTs Latency - 600 Users, 10 RPU, 80 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_600_10_80" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_600_10_80" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_600_10_80" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_800_3_10" using 1:2, "istio/csv_800_3_10" using 1:2, "linkerd/csv_800_3_10" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_800_3_10.png"
set title "SMTs Latency - 800 Users, 3 RPU, 10 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_800_3_10" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_800_3_10" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_800_3_10" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_800_3_20" using 1:2, "istio/csv_800_3_20" using 1:2, "linkerd/csv_800_3_20" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_800_3_20.png"
set title "SMTs Latency - 800 Users, 3 RPU, 20 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_800_3_20" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_800_3_20" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_800_3_20" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_800_3_40" using 1:2, "istio/csv_800_3_40" using 1:2, "linkerd/csv_800_3_40" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_800_3_40.png"
set title "SMTs Latency - 800 Users, 3 RPU, 40 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_800_3_40" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_800_3_40" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_800_3_40" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_800_3_60" using 1:2, "istio/csv_800_3_60" using 1:2, "linkerd/csv_800_3_60" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_800_3_60.png"
set title "SMTs Latency - 800 Users, 3 RPU, 60 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_800_3_60" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_800_3_60" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_800_3_60" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_800_3_80" using 1:2, "istio/csv_800_3_80" using 1:2, "linkerd/csv_800_3_80" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_800_3_80.png"
set title "SMTs Latency - 800 Users, 3 RPU, 80 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_800_3_80" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_800_3_80" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_800_3_80" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_800_5_10" using 1:2, "istio/csv_800_5_10" using 1:2, "linkerd/csv_800_5_10" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_800_5_10.png"
set title "SMTs Latency - 800 Users, 5 RPU, 10 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_800_5_10" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_800_5_10" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_800_5_10" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

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
plot "kubernetes/csv_800_5_20" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_800_5_20" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_800_5_20" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

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
plot "kubernetes/csv_800_5_40" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_800_5_40" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_800_5_40" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_800_5_60" using 1:2, "istio/csv_800_5_60" using 1:2, "linkerd/csv_800_5_60" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_800_5_60.png"
set title "SMTs Latency - 800 Users, 5 RPU, 60 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_800_5_60" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_800_5_60" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_800_5_60" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

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
plot "kubernetes/csv_800_5_80" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_800_5_80" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_800_5_80" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_800_10_10" using 1:2, "istio/csv_800_10_10" using 1:2, "linkerd/csv_800_10_10" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_800_10_10.png"
set title "SMTs Latency - 800 Users, 10 RPU, 10 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_800_10_10" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_800_10_10" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_800_10_10" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_800_10_20" using 1:2, "istio/csv_800_10_20" using 1:2, "linkerd/csv_800_10_20" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_800_10_20.png"
set title "SMTs Latency - 800 Users, 10 RPU, 20 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_800_10_20" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_800_10_20" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_800_10_20" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_800_10_40" using 1:2, "istio/csv_800_10_40" using 1:2, "linkerd/csv_800_10_40" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_800_10_40.png"
set title "SMTs Latency - 800 Users, 10 RPU, 40 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_800_10_40" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_800_10_40" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_800_10_40" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_800_10_60" using 1:2, "istio/csv_800_10_60" using 1:2, "linkerd/csv_800_10_60" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_800_10_60.png"
set title "SMTs Latency - 800 Users, 10 RPU, 60 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_800_10_60" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_800_10_60" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_800_10_60" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
set datafile separator ','

set style data boxplot 
plot "kubernetes/csv_800_10_80" using 1:2, "istio/csv_800_10_80" using 1:2, "linkerd/csv_800_10_80" using 1:2
MAX = GPVAL_Y_MAX
set terminal png
set style data boxplot 
set output "smts_latency_boxplot_800_10_80.png"
set title "SMTs Latency - 800 Users, 10 RPU, 80 Microservices"
set grid
set xlabel "Number of Users"
set ylabel "Response Time (ms)"
set xtics rotate by -45
set xrange [0:16]
set yrange[0:MAX]
plot "kubernetes/csv_800_10_80" using (1):$2:xtic("100 Users") title "Kubernetes" rgb "#1b9e77", "istio/csv_800_10_80" using (1):$2:xtic("100 Users") title "Istio" rgb "#7570b3", "linkerd/csv_800_10_80" using (1):$2:xtic("100 Users") title "Linkerd" rgb "#d95f02"

#Next plot starts here
