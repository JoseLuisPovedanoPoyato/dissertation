set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_100_3_10.png"
set title "Avg Memory Distribution - 100 Users, 3 RPU, 10 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_100_3_10" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_100_3_10" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_100_3_10" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_100_3_20.png"
set title "Avg Memory Distribution - 100 Users, 3 RPU, 20 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_100_3_20" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_100_3_20" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_100_3_20" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_100_3_40.png"
set title "Avg Memory Distribution - 100 Users, 3 RPU, 40 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_100_3_40" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_100_3_40" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_100_3_40" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_100_3_60.png"
set title "Avg Memory Distribution - 100 Users, 3 RPU, 60 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_100_3_60" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_100_3_60" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_100_3_60" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_100_3_80.png"
set title "Avg Memory Distribution - 100 Users, 3 RPU, 80 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_100_3_80" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_100_3_80" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_100_3_80" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_100_5_10.png"
set title "Avg Memory Distribution - 100 Users, 5 RPU, 10 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_100_5_10" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_100_5_10" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_100_5_10" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_100_5_20.png"
set title "Avg Memory Distribution - 100 Users, 5 RPU, 20 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_100_5_20" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_100_5_20" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_100_5_20" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_100_5_40.png"
set title "Avg Memory Distribution - 100 Users, 5 RPU, 40 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_100_5_40" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_100_5_40" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_100_5_40" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_100_5_60.png"
set title "Avg Memory Distribution - 100 Users, 5 RPU, 60 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_100_5_60" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_100_5_60" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_100_5_60" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_100_5_80.png"
set title "Avg Memory Distribution - 100 Users, 5 RPU, 80 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_100_5_80" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_100_5_80" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_100_5_80" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
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
plot "kubernetes/grouped_mem_file_100_10_10" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_100_10_10" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_100_10_10" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

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
plot "kubernetes/grouped_mem_file_100_10_20" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_100_10_20" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_100_10_20" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

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
plot "kubernetes/grouped_mem_file_100_10_40" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_100_10_40" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_100_10_40" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_100_10_60.png"
set title "Avg Memory Distribution - 100 Users, 10 RPU, 60 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_100_10_60" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_100_10_60" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_100_10_60" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_100_10_80.png"
set title "Avg Memory Distribution - 100 Users, 10 RPU, 80 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_100_10_80" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_100_10_80" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_100_10_80" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_200_3_10.png"
set title "Avg Memory Distribution - 200 Users, 3 RPU, 10 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_200_3_10" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_200_3_10" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_200_3_10" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_200_3_20.png"
set title "Avg Memory Distribution - 200 Users, 3 RPU, 20 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_200_3_20" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_200_3_20" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_200_3_20" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_200_3_40.png"
set title "Avg Memory Distribution - 200 Users, 3 RPU, 40 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_200_3_40" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_200_3_40" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_200_3_40" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_200_3_60.png"
set title "Avg Memory Distribution - 200 Users, 3 RPU, 60 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_200_3_60" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_200_3_60" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_200_3_60" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_200_3_80.png"
set title "Avg Memory Distribution - 200 Users, 3 RPU, 80 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_200_3_80" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_200_3_80" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_200_3_80" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_200_5_10.png"
set title "Avg Memory Distribution - 200 Users, 5 RPU, 10 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_200_5_10" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_200_5_10" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_200_5_10" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_200_5_20.png"
set title "Avg Memory Distribution - 200 Users, 5 RPU, 20 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_200_5_20" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_200_5_20" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_200_5_20" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_200_5_40.png"
set title "Avg Memory Distribution - 200 Users, 5 RPU, 40 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_200_5_40" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_200_5_40" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_200_5_40" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_200_5_60.png"
set title "Avg Memory Distribution - 200 Users, 5 RPU, 60 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_200_5_60" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_200_5_60" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_200_5_60" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_200_5_80.png"
set title "Avg Memory Distribution - 200 Users, 5 RPU, 80 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_200_5_80" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_200_5_80" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_200_5_80" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

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
plot "kubernetes/grouped_mem_file_200_10_10" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_200_10_10" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_200_10_10" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

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
plot "kubernetes/grouped_mem_file_200_10_20" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_200_10_20" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_200_10_20" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

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
plot "kubernetes/grouped_mem_file_200_10_40" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_200_10_40" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_200_10_40" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_200_10_60.png"
set title "Avg Memory Distribution - 200 Users, 10 RPU, 60 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_200_10_60" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_200_10_60" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_200_10_60" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_200_10_80.png"
set title "Avg Memory Distribution - 200 Users, 10 RPU, 80 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_200_10_80" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_200_10_80" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_200_10_80" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_400_3_10.png"
set title "Avg Memory Distribution - 400 Users, 3 RPU, 10 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_400_3_10" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_400_3_10" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_400_3_10" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_400_3_20.png"
set title "Avg Memory Distribution - 400 Users, 3 RPU, 20 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_400_3_20" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_400_3_20" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_400_3_20" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_400_3_40.png"
set title "Avg Memory Distribution - 400 Users, 3 RPU, 40 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_400_3_40" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_400_3_40" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_400_3_40" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_400_3_60.png"
set title "Avg Memory Distribution - 400 Users, 3 RPU, 60 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_400_3_60" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_400_3_60" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_400_3_60" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_400_3_80.png"
set title "Avg Memory Distribution - 400 Users, 3 RPU, 80 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_400_3_80" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_400_3_80" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_400_3_80" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_400_5_10.png"
set title "Avg Memory Distribution - 400 Users, 5 RPU, 10 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_400_5_10" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_400_5_10" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_400_5_10" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_400_5_20.png"
set title "Avg Memory Distribution - 400 Users, 5 RPU, 20 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_400_5_20" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_400_5_20" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_400_5_20" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_400_5_40.png"
set title "Avg Memory Distribution - 400 Users, 5 RPU, 40 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_400_5_40" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_400_5_40" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_400_5_40" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_400_5_60.png"
set title "Avg Memory Distribution - 400 Users, 5 RPU, 60 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_400_5_60" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_400_5_60" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_400_5_60" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_400_5_80.png"
set title "Avg Memory Distribution - 400 Users, 5 RPU, 80 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_400_5_80" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_400_5_80" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_400_5_80" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

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
plot "kubernetes/grouped_mem_file_400_10_10" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_400_10_10" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_400_10_10" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

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
plot "kubernetes/grouped_mem_file_400_10_20" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_400_10_20" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_400_10_20" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

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
plot "kubernetes/grouped_mem_file_400_10_40" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_400_10_40" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_400_10_40" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_400_10_60.png"
set title "Avg Memory Distribution - 400 Users, 10 RPU, 60 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_400_10_60" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_400_10_60" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_400_10_60" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_400_10_80.png"
set title "Avg Memory Distribution - 400 Users, 10 RPU, 80 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_400_10_80" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_400_10_80" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_400_10_80" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_600_3_10.png"
set title "Avg Memory Distribution - 600 Users, 3 RPU, 10 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_600_3_10" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_600_3_10" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_600_3_10" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_600_3_20.png"
set title "Avg Memory Distribution - 600 Users, 3 RPU, 20 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_600_3_20" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_600_3_20" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_600_3_20" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_600_3_40.png"
set title "Avg Memory Distribution - 600 Users, 3 RPU, 40 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_600_3_40" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_600_3_40" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_600_3_40" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_600_3_60.png"
set title "Avg Memory Distribution - 600 Users, 3 RPU, 60 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_600_3_60" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_600_3_60" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_600_3_60" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_600_3_80.png"
set title "Avg Memory Distribution - 600 Users, 3 RPU, 80 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_600_3_80" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_600_3_80" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_600_3_80" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_600_5_10.png"
set title "Avg Memory Distribution - 600 Users, 5 RPU, 10 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_600_5_10" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_600_5_10" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_600_5_10" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_600_5_20.png"
set title "Avg Memory Distribution - 600 Users, 5 RPU, 20 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_600_5_20" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_600_5_20" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_600_5_20" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_600_5_40.png"
set title "Avg Memory Distribution - 600 Users, 5 RPU, 40 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_600_5_40" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_600_5_40" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_600_5_40" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_600_5_60.png"
set title "Avg Memory Distribution - 600 Users, 5 RPU, 60 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_600_5_60" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_600_5_60" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_600_5_60" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_600_5_80.png"
set title "Avg Memory Distribution - 600 Users, 5 RPU, 80 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_600_5_80" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_600_5_80" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_600_5_80" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_600_10_10.png"
set title "Avg Memory Distribution - 600 Users, 10 RPU, 10 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_600_10_10" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_600_10_10" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_600_10_10" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_600_10_20.png"
set title "Avg Memory Distribution - 600 Users, 10 RPU, 20 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_600_10_20" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_600_10_20" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_600_10_20" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_600_10_40.png"
set title "Avg Memory Distribution - 600 Users, 10 RPU, 40 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_600_10_40" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_600_10_40" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_600_10_40" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_600_10_60.png"
set title "Avg Memory Distribution - 600 Users, 10 RPU, 60 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_600_10_60" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_600_10_60" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_600_10_60" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_600_10_80.png"
set title "Avg Memory Distribution - 600 Users, 10 RPU, 80 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_600_10_80" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_600_10_80" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_600_10_80" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_800_3_10.png"
set title "Avg Memory Distribution - 800 Users, 3 RPU, 10 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_800_3_10" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_800_3_10" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_800_3_10" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_800_3_20.png"
set title "Avg Memory Distribution - 800 Users, 3 RPU, 20 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_800_3_20" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_800_3_20" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_800_3_20" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_800_3_40.png"
set title "Avg Memory Distribution - 800 Users, 3 RPU, 40 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_800_3_40" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_800_3_40" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_800_3_40" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_800_3_60.png"
set title "Avg Memory Distribution - 800 Users, 3 RPU, 60 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_800_3_60" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_800_3_60" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_800_3_60" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_800_3_80.png"
set title "Avg Memory Distribution - 800 Users, 3 RPU, 80 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_800_3_80" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_800_3_80" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_800_3_80" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_800_5_10.png"
set title "Avg Memory Distribution - 800 Users, 5 RPU, 10 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_800_5_10" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_800_5_10" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_800_5_10" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_800_5_20.png"
set title "Avg Memory Distribution - 800 Users, 5 RPU, 20 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_800_5_20" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_800_5_20" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_800_5_20" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_800_5_40.png"
set title "Avg Memory Distribution - 800 Users, 5 RPU, 40 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_800_5_40" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_800_5_40" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_800_5_40" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_800_5_60.png"
set title "Avg Memory Distribution - 800 Users, 5 RPU, 60 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_800_5_60" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_800_5_60" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_800_5_60" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_800_5_80.png"
set title "Avg Memory Distribution - 800 Users, 5 RPU, 80 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_800_5_80" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_800_5_80" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_800_5_80" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_800_10_10.png"
set title "Avg Memory Distribution - 800 Users, 10 RPU, 10 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_800_10_10" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_800_10_10" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_800_10_10" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_800_10_20.png"
set title "Avg Memory Distribution - 800 Users, 10 RPU, 20 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_800_10_20" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_800_10_20" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_800_10_20" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_800_10_40.png"
set title "Avg Memory Distribution - 800 Users, 10 RPU, 40 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_800_10_40" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_800_10_40" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_800_10_40" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_800_10_60.png"
set title "Avg Memory Distribution - 800 Users, 10 RPU, 60 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_800_10_60" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_800_10_60" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_800_10_60" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_800_10_80.png"
set title "Avg Memory Distribution - 800 Users, 10 RPU, 80 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_800_10_80" using 2:xtic(1) title "Kubernetes" lc rgb "#1b9e77", "istio/grouped_mem_file_800_10_80" using 2:xtic(1) title "Istio" lc rgb "#7570b3", "linkerd/grouped_mem_file_800_10_80" using 2:xtic(1) title "Linkerd" lc rgb "#d95f02"

#Next plot starts here
