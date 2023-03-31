set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_100_10_10.png"
set title "Avg Memory Distribution - 100 Users, 10 RPU, 10 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_100_10_10" using 2:xtic(1) lc rgb "#1b9e77" title "Kubernetes", "linkerd/grouped_mem_file_100_10_10" using 2:xtic(1) lc rgb "#d95f02" title "Linkerd", "istio/grouped_mem_file_100_10_10" using 2:xtic(1) lc rgb "#7570b3" title "Istio", "consul/grouped_mem_file_100_10_10" using 2:xtic(1) lc rgb "#e69f00" title "Consul"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_100_10_20.png"
set title "Avg Memory Distribution - 100 Users, 10 RPU, 20 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_100_10_20" using 2:xtic(1) lc rgb "#1b9e77" title "Kubernetes", "linkerd/grouped_mem_file_100_10_20" using 2:xtic(1) lc rgb "#d95f02" title "Linkerd", "istio/grouped_mem_file_100_10_20" using 2:xtic(1) lc rgb "#7570b3" title "Istio", "consul/grouped_mem_file_100_10_20" using 2:xtic(1) lc rgb "#e69f00" title "Consul"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_100_10_40.png"
set title "Avg Memory Distribution - 100 Users, 10 RPU, 40 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_100_10_40" using 2:xtic(1) lc rgb "#1b9e77" title "Kubernetes", "linkerd/grouped_mem_file_100_10_40" using 2:xtic(1) lc rgb "#d95f02" title "Linkerd", "istio/grouped_mem_file_100_10_40" using 2:xtic(1) lc rgb "#7570b3" title "Istio", "consul/grouped_mem_file_100_10_40" using 2:xtic(1) lc rgb "#e69f00" title "Consul"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_200_10_10.png"
set title "Avg Memory Distribution - 200 Users, 10 RPU, 10 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_200_10_10" using 2:xtic(1) lc rgb "#1b9e77" title "Kubernetes", "linkerd/grouped_mem_file_200_10_10" using 2:xtic(1) lc rgb "#d95f02" title "Linkerd", "istio/grouped_mem_file_200_10_10" using 2:xtic(1) lc rgb "#7570b3" title "Istio", "consul/grouped_mem_file_200_10_10" using 2:xtic(1) lc rgb "#e69f00" title "Consul"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_200_10_20.png"
set title "Avg Memory Distribution - 200 Users, 10 RPU, 20 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_200_10_20" using 2:xtic(1) lc rgb "#1b9e77" title "Kubernetes", "linkerd/grouped_mem_file_200_10_20" using 2:xtic(1) lc rgb "#d95f02" title "Linkerd", "istio/grouped_mem_file_200_10_20" using 2:xtic(1) lc rgb "#7570b3" title "Istio", "consul/grouped_mem_file_200_10_20" using 2:xtic(1) lc rgb "#e69f00" title "Consul"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_200_10_40.png"
set title "Avg Memory Distribution - 200 Users, 10 RPU, 40 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_200_10_40" using 2:xtic(1) lc rgb "#1b9e77" title "Kubernetes", "linkerd/grouped_mem_file_200_10_40" using 2:xtic(1) lc rgb "#d95f02" title "Linkerd", "istio/grouped_mem_file_200_10_40" using 2:xtic(1) lc rgb "#7570b3" title "Istio", "consul/grouped_mem_file_200_10_40" using 2:xtic(1) lc rgb "#e69f00" title "Consul"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_400_10_10.png"
set title "Avg Memory Distribution - 400 Users, 10 RPU, 10 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_400_10_10" using 2:xtic(1) lc rgb "#1b9e77" title "Kubernetes", "linkerd/grouped_mem_file_400_10_10" using 2:xtic(1) lc rgb "#d95f02" title "Linkerd", "istio/grouped_mem_file_400_10_10" using 2:xtic(1) lc rgb "#7570b3" title "Istio", "consul/grouped_mem_file_400_10_10" using 2:xtic(1) lc rgb "#e69f00" title "Consul"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_400_10_20.png"
set title "Avg Memory Distribution - 400 Users, 10 RPU, 20 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_400_10_20" using 2:xtic(1) lc rgb "#1b9e77" title "Kubernetes", "linkerd/grouped_mem_file_400_10_20" using 2:xtic(1) lc rgb "#d95f02" title "Linkerd", "istio/grouped_mem_file_400_10_20" using 2:xtic(1) lc rgb "#7570b3" title "Istio", "consul/grouped_mem_file_400_10_20" using 2:xtic(1) lc rgb "#e69f00" title "Consul"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_400_10_40.png"
set title "Avg Memory Distribution - 400 Users, 10 RPU, 40 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_400_10_40" using 2:xtic(1) lc rgb "#1b9e77" title "Kubernetes", "linkerd/grouped_mem_file_400_10_40" using 2:xtic(1) lc rgb "#d95f02" title "Linkerd", "istio/grouped_mem_file_400_10_40" using 2:xtic(1) lc rgb "#7570b3" title "Istio", "consul/grouped_mem_file_400_10_40" using 2:xtic(1) lc rgb "#e69f00" title "Consul"

#Next plot starts here
