set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_only_cpu_memory_100_3_20.png"
set title "Avg CPU Distribution - 100 Users, 3 RPU, 20 Services"
set xlabel "Application Area"
set ylabel "CPU Used (Seconds)"
set xtics rotate by -45
plot "istio/smts_only_cpu_file_100_3_20" using 2:xtic(1) title "Istio", "linkerd/smts_only_cpu_file_100_3_20" using 2:xtic(1) title "Linkerd"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_only_cpu_memory_100_3_40.png"
set title "Avg CPU Distribution - 100 Users, 3 RPU, 40 Services"
set xlabel "Application Area"
set ylabel "CPU Used (Seconds)"
set xtics rotate by -45
plot "istio/smts_only_cpu_file_100_3_40" using 2:xtic(1) title "Istio", "linkerd/smts_only_cpu_file_100_3_40" using 2:xtic(1) title "Linkerd"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_only_cpu_memory_100_3_80.png"
set title "Avg CPU Distribution - 100 Users, 3 RPU, 80 Services"
set xlabel "Application Area"
set ylabel "CPU Used (Seconds)"
set xtics rotate by -45
plot "istio/smts_only_cpu_file_100_3_80" using 2:xtic(1) title "Istio", "linkerd/smts_only_cpu_file_100_3_80" using 2:xtic(1) title "Linkerd"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_only_cpu_memory_200_3_20.png"
set title "Avg CPU Distribution - 200 Users, 3 RPU, 20 Services"
set xlabel "Application Area"
set ylabel "CPU Used (Seconds)"
set xtics rotate by -45
plot "istio/smts_only_cpu_file_200_3_20" using 2:xtic(1) title "Istio", "linkerd/smts_only_cpu_file_200_3_20" using 2:xtic(1) title "Linkerd"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_only_cpu_memory_200_3_40.png"
set title "Avg CPU Distribution - 200 Users, 3 RPU, 40 Services"
set xlabel "Application Area"
set ylabel "CPU Used (Seconds)"
set xtics rotate by -45
plot "istio/smts_only_cpu_file_200_3_40" using 2:xtic(1) title "Istio", "linkerd/smts_only_cpu_file_200_3_40" using 2:xtic(1) title "Linkerd"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_only_cpu_memory_200_3_80.png"
set title "Avg CPU Distribution - 200 Users, 3 RPU, 80 Services"
set xlabel "Application Area"
set ylabel "CPU Used (Seconds)"
set xtics rotate by -45
plot "istio/smts_only_cpu_file_200_3_80" using 2:xtic(1) title "Istio", "linkerd/smts_only_cpu_file_200_3_80" using 2:xtic(1) title "Linkerd"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_only_cpu_memory_400_3_20.png"
set title "Avg CPU Distribution - 400 Users, 3 RPU, 20 Services"
set xlabel "Application Area"
set ylabel "CPU Used (Seconds)"
set xtics rotate by -45
plot "istio/smts_only_cpu_file_400_3_20" using 2:xtic(1) title "Istio", "linkerd/smts_only_cpu_file_400_3_20" using 2:xtic(1) title "Linkerd"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_only_cpu_memory_400_3_40.png"
set title "Avg CPU Distribution - 400 Users, 3 RPU, 40 Services"
set xlabel "Application Area"
set ylabel "CPU Used (Seconds)"
set xtics rotate by -45
plot "istio/smts_only_cpu_file_400_3_40" using 2:xtic(1) title "Istio", "linkerd/smts_only_cpu_file_400_3_40" using 2:xtic(1) title "Linkerd"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_only_cpu_memory_400_3_80.png"
set title "Avg CPU Distribution - 400 Users, 3 RPU, 80 Services"
set xlabel "Application Area"
set ylabel "CPU Used (Seconds)"
set xtics rotate by -45
plot "istio/smts_only_cpu_file_400_3_80" using 2:xtic(1) title "Istio", "linkerd/smts_only_cpu_file_400_3_80" using 2:xtic(1) title "Linkerd"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_only_cpu_memory_600_3_20.png"
set title "Avg CPU Distribution - 600 Users, 3 RPU, 20 Services"
set xlabel "Application Area"
set ylabel "CPU Used (Seconds)"
set xtics rotate by -45
plot "istio/smts_only_cpu_file_600_3_20" using 2:xtic(1) title "Istio", "linkerd/smts_only_cpu_file_600_3_20" using 2:xtic(1) title "Linkerd"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_only_cpu_memory_600_3_40.png"
set title "Avg CPU Distribution - 600 Users, 3 RPU, 40 Services"
set xlabel "Application Area"
set ylabel "CPU Used (Seconds)"
set xtics rotate by -45
plot "istio/smts_only_cpu_file_600_3_40" using 2:xtic(1) title "Istio", "linkerd/smts_only_cpu_file_600_3_40" using 2:xtic(1) title "Linkerd"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_only_cpu_memory_600_3_80.png"
set title "Avg CPU Distribution - 600 Users, 3 RPU, 80 Services"
set xlabel "Application Area"
set ylabel "CPU Used (Seconds)"
set xtics rotate by -45
plot "istio/smts_only_cpu_file_600_3_80" using 2:xtic(1) title "Istio", "linkerd/smts_only_cpu_file_600_3_80" using 2:xtic(1) title "Linkerd"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_only_cpu_memory_800_3_20.png"
set title "Avg CPU Distribution - 800 Users, 3 RPU, 20 Services"
set xlabel "Application Area"
set ylabel "CPU Used (Seconds)"
set xtics rotate by -45
plot "istio/smts_only_cpu_file_800_3_20" using 2:xtic(1) title "Istio", "linkerd/smts_only_cpu_file_800_3_20" using 2:xtic(1) title "Linkerd"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_only_cpu_memory_800_3_40.png"
set title "Avg CPU Distribution - 800 Users, 3 RPU, 40 Services"
set xlabel "Application Area"
set ylabel "CPU Used (Seconds)"
set xtics rotate by -45
plot "istio/smts_only_cpu_file_800_3_40" using 2:xtic(1) title "Istio", "linkerd/smts_only_cpu_file_800_3_40" using 2:xtic(1) title "Linkerd"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_only_cpu_memory_800_3_80.png"
set title "Avg CPU Distribution - 800 Users, 3 RPU, 80 Services"
set xlabel "Application Area"
set ylabel "CPU Used (Seconds)"
set xtics rotate by -45
plot "istio/smts_only_cpu_file_800_3_80" using 2:xtic(1) title "Istio", "linkerd/smts_only_cpu_file_800_3_80" using 2:xtic(1) title "Linkerd"

#Next plot starts here
