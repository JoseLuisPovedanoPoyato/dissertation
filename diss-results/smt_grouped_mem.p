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
plot "kubernetes/grouped_mem_file_100_10_20" using 2:xtic(1) title "Kubernetes", "istio/grouped_mem_file_100_10_20" using 2:xtic(1) title "Istio", "linkerd/grouped_mem_file_100_10_20" using 2:xtic(1) title "Linkerd"

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
plot "kubernetes/grouped_mem_file_100_10_40" using 2:xtic(1) title "Kubernetes", "istio/grouped_mem_file_100_10_40" using 2:xtic(1) title "Istio", "linkerd/grouped_mem_file_100_10_40" using 2:xtic(1) title "Linkerd"

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
plot "kubernetes/grouped_mem_file_100_10_80" using 2:xtic(1) title "Kubernetes", "istio/grouped_mem_file_100_10_80" using 2:xtic(1) title "Istio", "linkerd/grouped_mem_file_100_10_80" using 2:xtic(1) title "Linkerd"

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
plot "kubernetes/grouped_mem_file_200_10_20" using 2:xtic(1) title "Kubernetes", "istio/grouped_mem_file_200_10_20" using 2:xtic(1) title "Istio", "linkerd/grouped_mem_file_200_10_20" using 2:xtic(1) title "Linkerd"

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
plot "kubernetes/grouped_mem_file_200_10_40" using 2:xtic(1) title "Kubernetes", "istio/grouped_mem_file_200_10_40" using 2:xtic(1) title "Istio", "linkerd/grouped_mem_file_200_10_40" using 2:xtic(1) title "Linkerd"

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
plot "kubernetes/grouped_mem_file_200_10_80" using 2:xtic(1) title "Kubernetes", "istio/grouped_mem_file_200_10_80" using 2:xtic(1) title "Istio", "linkerd/grouped_mem_file_200_10_80" using 2:xtic(1) title "Linkerd"

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
plot "kubernetes/grouped_mem_file_400_10_20" using 2:xtic(1) title "Kubernetes", "istio/grouped_mem_file_400_10_20" using 2:xtic(1) title "Istio", "linkerd/grouped_mem_file_400_10_20" using 2:xtic(1) title "Linkerd"

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
plot "kubernetes/grouped_mem_file_400_10_40" using 2:xtic(1) title "Kubernetes", "istio/grouped_mem_file_400_10_40" using 2:xtic(1) title "Istio", "linkerd/grouped_mem_file_400_10_40" using 2:xtic(1) title "Linkerd"

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
plot "kubernetes/grouped_mem_file_400_10_80" using 2:xtic(1) title "Kubernetes", "istio/grouped_mem_file_400_10_80" using 2:xtic(1) title "Istio", "linkerd/grouped_mem_file_400_10_80" using 2:xtic(1) title "Linkerd"

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
plot "kubernetes/grouped_mem_file_600_10_20" using 2:xtic(1) title "Kubernetes", "istio/grouped_mem_file_600_10_20" using 2:xtic(1) title "Istio", "linkerd/grouped_mem_file_600_10_20" using 2:xtic(1) title "Linkerd"

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
plot "kubernetes/grouped_mem_file_600_10_40" using 2:xtic(1) title "Kubernetes", "istio/grouped_mem_file_600_10_40" using 2:xtic(1) title "Istio", "linkerd/grouped_mem_file_600_10_40" using 2:xtic(1) title "Linkerd"

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
plot "kubernetes/grouped_mem_file_600_10_80" using 2:xtic(1) title "Kubernetes", "istio/grouped_mem_file_600_10_80" using 2:xtic(1) title "Istio", "linkerd/grouped_mem_file_600_10_80" using 2:xtic(1) title "Linkerd"

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
plot "kubernetes/grouped_mem_file_800_10_20" using 2:xtic(1) title "Kubernetes", "istio/grouped_mem_file_800_10_20" using 2:xtic(1) title "Istio", "linkerd/grouped_mem_file_800_10_20" using 2:xtic(1) title "Linkerd"

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
plot "kubernetes/grouped_mem_file_800_10_40" using 2:xtic(1) title "Kubernetes", "istio/grouped_mem_file_800_10_40" using 2:xtic(1) title "Istio", "linkerd/grouped_mem_file_800_10_40" using 2:xtic(1) title "Linkerd"

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
plot "kubernetes/grouped_mem_file_800_10_80" using 2:xtic(1) title "Kubernetes", "istio/grouped_mem_file_800_10_80" using 2:xtic(1) title "Istio", "linkerd/grouped_mem_file_800_10_80" using 2:xtic(1) title "Linkerd"

#Next plot starts here
