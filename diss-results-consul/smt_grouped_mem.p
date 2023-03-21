set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_100_1_10.png"
set title "Avg Memory Distribution - 100 Users, 1 RPU, 10 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_100_1_10" using 2:xtic(1) title "Kubernetes", "istio/grouped_mem_file_100_1_10" using 2:xtic(1) title "Istio", "linkerd/grouped_mem_file_100_1_10" using 2:xtic(1) title "Linkerd", "consul/grouped_mem_file_100_1_10" using 2:xtic(1) title "Consul"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_100_1_20.png"
set title "Avg Memory Distribution - 100 Users, 1 RPU, 20 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_100_1_20" using 2:xtic(1) title "Kubernetes", "istio/grouped_mem_file_100_1_20" using 2:xtic(1) title "Istio", "linkerd/grouped_mem_file_100_1_20" using 2:xtic(1) title "Linkerd", "consul/grouped_mem_file_100_1_20" using 2:xtic(1) title "Consul"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_100_1_40.png"
set title "Avg Memory Distribution - 100 Users, 1 RPU, 40 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_100_1_40" using 2:xtic(1) title "Kubernetes", "istio/grouped_mem_file_100_1_40" using 2:xtic(1) title "Istio", "linkerd/grouped_mem_file_100_1_40" using 2:xtic(1) title "Linkerd", "consul/grouped_mem_file_100_1_40" using 2:xtic(1) title "Consul"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_200_1_10.png"
set title "Avg Memory Distribution - 200 Users, 1 RPU, 10 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_200_1_10" using 2:xtic(1) title "Kubernetes", "istio/grouped_mem_file_200_1_10" using 2:xtic(1) title "Istio", "linkerd/grouped_mem_file_200_1_10" using 2:xtic(1) title "Linkerd", "consul/grouped_mem_file_200_1_10" using 2:xtic(1) title "Consul"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_200_1_20.png"
set title "Avg Memory Distribution - 200 Users, 1 RPU, 20 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_200_1_20" using 2:xtic(1) title "Kubernetes", "istio/grouped_mem_file_200_1_20" using 2:xtic(1) title "Istio", "linkerd/grouped_mem_file_200_1_20" using 2:xtic(1) title "Linkerd", "consul/grouped_mem_file_200_1_20" using 2:xtic(1) title "Consul"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_200_1_40.png"
set title "Avg Memory Distribution - 200 Users, 1 RPU, 40 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_200_1_40" using 2:xtic(1) title "Kubernetes", "istio/grouped_mem_file_200_1_40" using 2:xtic(1) title "Istio", "linkerd/grouped_mem_file_200_1_40" using 2:xtic(1) title "Linkerd", "consul/grouped_mem_file_200_1_40" using 2:xtic(1) title "Consul"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_400_1_10.png"
set title "Avg Memory Distribution - 400 Users, 1 RPU, 10 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_400_1_10" using 2:xtic(1) title "Kubernetes", "istio/grouped_mem_file_400_1_10" using 2:xtic(1) title "Istio", "linkerd/grouped_mem_file_400_1_10" using 2:xtic(1) title "Linkerd", "consul/grouped_mem_file_400_1_10" using 2:xtic(1) title "Consul"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_400_1_20.png"
set title "Avg Memory Distribution - 400 Users, 1 RPU, 20 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_400_1_20" using 2:xtic(1) title "Kubernetes", "istio/grouped_mem_file_400_1_20" using 2:xtic(1) title "Istio", "linkerd/grouped_mem_file_400_1_20" using 2:xtic(1) title "Linkerd", "consul/grouped_mem_file_400_1_20" using 2:xtic(1) title "Consul"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_400_1_40.png"
set title "Avg Memory Distribution - 400 Users, 1 RPU, 40 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_400_1_40" using 2:xtic(1) title "Kubernetes", "istio/grouped_mem_file_400_1_40" using 2:xtic(1) title "Istio", "linkerd/grouped_mem_file_400_1_40" using 2:xtic(1) title "Linkerd", "consul/grouped_mem_file_400_1_40" using 2:xtic(1) title "Consul"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_600_1_10.png"
set title "Avg Memory Distribution - 600 Users, 1 RPU, 10 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_600_1_10" using 2:xtic(1) title "Kubernetes", "istio/grouped_mem_file_600_1_10" using 2:xtic(1) title "Istio", "linkerd/grouped_mem_file_600_1_10" using 2:xtic(1) title "Linkerd", "consul/grouped_mem_file_600_1_10" using 2:xtic(1) title "Consul"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_600_1_20.png"
set title "Avg Memory Distribution - 600 Users, 1 RPU, 20 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_600_1_20" using 2:xtic(1) title "Kubernetes", "istio/grouped_mem_file_600_1_20" using 2:xtic(1) title "Istio", "linkerd/grouped_mem_file_600_1_20" using 2:xtic(1) title "Linkerd", "consul/grouped_mem_file_600_1_20" using 2:xtic(1) title "Consul"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_600_1_40.png"
set title "Avg Memory Distribution - 600 Users, 1 RPU, 40 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_600_1_40" using 2:xtic(1) title "Kubernetes", "istio/grouped_mem_file_600_1_40" using 2:xtic(1) title "Istio", "linkerd/grouped_mem_file_600_1_40" using 2:xtic(1) title "Linkerd", "consul/grouped_mem_file_600_1_40" using 2:xtic(1) title "Consul"

#Next plot starts here
