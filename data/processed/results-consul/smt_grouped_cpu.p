set size 1, 1
set datafile separator ','
set terminal png size 700, 700
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_cpu_100_10_10.png"
set title "SMTs CPU Usage Distribution - 100 Users, 10 RPU, 10 Services"
set xlabel "Application Area"
set ylabel "CPU Used (s)"
set xtics rotate by -45
plot "kubernetes/grouped_cpu_file_100_10_10" using 2:xtic(1) title "Kubernetes", "istio/grouped_cpu_file_100_10_10" using 2:xtic(1) title "Istio", "linkerd/grouped_cpu_file_100_10_10" using 2:xtic(1) title "Linkerd", "consul/grouped_cpu_file_100_10_10" using 2:xtic(1) title "Consul"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_cpu_100_10_20.png"
set title "SMTs CPU Usage Distribution - 100 Users, 10 RPU, 20 Services"
set xlabel "Application Area"
set ylabel "CPU Used (s)"
set xtics rotate by -45
plot "kubernetes/grouped_cpu_file_100_10_20" using 2:xtic(1) title "Kubernetes", "istio/grouped_cpu_file_100_10_20" using 2:xtic(1) title "Istio", "linkerd/grouped_cpu_file_100_10_20" using 2:xtic(1) title "Linkerd", "consul/grouped_cpu_file_100_10_20" using 2:xtic(1) title "Consul"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_cpu_100_10_40.png"
set title "SMTs CPU Usage Distribution - 100 Users, 10 RPU, 40 Services"
set xlabel "Application Area"
set ylabel "CPU Used (s)"
set xtics rotate by -45
plot "kubernetes/grouped_cpu_file_100_10_40" using 2:xtic(1) title "Kubernetes", "istio/grouped_cpu_file_100_10_40" using 2:xtic(1) title "Istio", "linkerd/grouped_cpu_file_100_10_40" using 2:xtic(1) title "Linkerd", "consul/grouped_cpu_file_100_10_40" using 2:xtic(1) title "Consul"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_cpu_200_10_10.png"
set title "SMTs CPU Usage Distribution - 200 Users, 10 RPU, 10 Services"
set xlabel "Application Area"
set ylabel "CPU Used (s)"
set xtics rotate by -45
plot "kubernetes/grouped_cpu_file_200_10_10" using 2:xtic(1) title "Kubernetes", "istio/grouped_cpu_file_200_10_10" using 2:xtic(1) title "Istio", "linkerd/grouped_cpu_file_200_10_10" using 2:xtic(1) title "Linkerd", "consul/grouped_cpu_file_200_10_10" using 2:xtic(1) title "Consul"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_cpu_200_10_20.png"
set title "SMTs CPU Usage Distribution - 200 Users, 10 RPU, 20 Services"
set xlabel "Application Area"
set ylabel "CPU Used (s)"
set xtics rotate by -45
plot "kubernetes/grouped_cpu_file_200_10_20" using 2:xtic(1) title "Kubernetes", "istio/grouped_cpu_file_200_10_20" using 2:xtic(1) title "Istio", "linkerd/grouped_cpu_file_200_10_20" using 2:xtic(1) title "Linkerd", "consul/grouped_cpu_file_200_10_20" using 2:xtic(1) title "Consul"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_cpu_200_10_40.png"
set title "SMTs CPU Usage Distribution - 200 Users, 10 RPU, 40 Services"
set xlabel "Application Area"
set ylabel "CPU Used (s)"
set xtics rotate by -45
plot "kubernetes/grouped_cpu_file_200_10_40" using 2:xtic(1) title "Kubernetes", "istio/grouped_cpu_file_200_10_40" using 2:xtic(1) title "Istio", "linkerd/grouped_cpu_file_200_10_40" using 2:xtic(1) title "Linkerd", "consul/grouped_cpu_file_200_10_40" using 2:xtic(1) title "Consul"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_cpu_400_10_10.png"
set title "SMTs CPU Usage Distribution - 400 Users, 10 RPU, 10 Services"
set xlabel "Application Area"
set ylabel "CPU Used (s)"
set xtics rotate by -45
plot "kubernetes/grouped_cpu_file_400_10_10" using 2:xtic(1) title "Kubernetes", "istio/grouped_cpu_file_400_10_10" using 2:xtic(1) title "Istio", "linkerd/grouped_cpu_file_400_10_10" using 2:xtic(1) title "Linkerd", "consul/grouped_cpu_file_400_10_10" using 2:xtic(1) title "Consul"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_cpu_400_10_20.png"
set title "SMTs CPU Usage Distribution - 400 Users, 10 RPU, 20 Services"
set xlabel "Application Area"
set ylabel "CPU Used (s)"
set xtics rotate by -45
plot "kubernetes/grouped_cpu_file_400_10_20" using 2:xtic(1) title "Kubernetes", "istio/grouped_cpu_file_400_10_20" using 2:xtic(1) title "Istio", "linkerd/grouped_cpu_file_400_10_20" using 2:xtic(1) title "Linkerd", "consul/grouped_cpu_file_400_10_20" using 2:xtic(1) title "Consul"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_cpu_400_10_40.png"
set title "SMTs CPU Usage Distribution - 400 Users, 10 RPU, 40 Services"
set xlabel "Application Area"
set ylabel "CPU Used (s)"
set xtics rotate by -45
plot "kubernetes/grouped_cpu_file_400_10_40" using 2:xtic(1) title "Kubernetes", "istio/grouped_cpu_file_400_10_40" using 2:xtic(1) title "Istio", "linkerd/grouped_cpu_file_400_10_40" using 2:xtic(1) title "Linkerd", "consul/grouped_cpu_file_400_10_40" using 2:xtic(1) title "Consul"

#Next plot starts here
