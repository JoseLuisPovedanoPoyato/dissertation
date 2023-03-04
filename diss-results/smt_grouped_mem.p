set size 1, 1
set datafile separator ','
set terminal png
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_100_3_10.png"
set title "SMTs Clustered Avg Memory - 100 Users, 10 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_100_3_10" using 2:xtic(1) title "Kubernetes", "istio/grouped_mem_file_100_3_10" using 2:xtic(1) title "Istio", "linkerd/grouped_mem_file_100_3_10" using 2:xtic(1) title "Linkerd"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_100_3_20.png"
set title "SMTs Clustered Avg Memory - 100 Users, 20 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_100_3_20" using 2:xtic(1) title "Kubernetes", "istio/grouped_mem_file_100_3_20" using 2:xtic(1) title "Istio", "linkerd/grouped_mem_file_100_3_20" using 2:xtic(1) title "Linkerd"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_100_3_40.png"
set title "SMTs Clustered Avg Memory - 100 Users, 40 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_100_3_40" using 2:xtic(1) title "Kubernetes", "istio/grouped_mem_file_100_3_40" using 2:xtic(1) title "Istio", "linkerd/grouped_mem_file_100_3_40" using 2:xtic(1) title "Linkerd"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_100_3_60.png"
set title "SMTs Clustered Avg Memory - 100 Users, 60 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_100_3_60" using 2:xtic(1) title "Kubernetes", "istio/grouped_mem_file_100_3_60" using 2:xtic(1) title "Istio", "linkerd/grouped_mem_file_100_3_60" using 2:xtic(1) title "Linkerd"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_100_3_80.png"
set title "SMTs Clustered Avg Memory - 100 Users, 80 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_100_3_80" using 2:xtic(1) title "Kubernetes", "istio/grouped_mem_file_100_3_80" using 2:xtic(1) title "Istio", "linkerd/grouped_mem_file_100_3_80" using 2:xtic(1) title "Linkerd"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_200_3_10.png"
set title "SMTs Clustered Avg Memory - 200 Users, 10 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_200_3_10" using 2:xtic(1) title "Kubernetes", "istio/grouped_mem_file_200_3_10" using 2:xtic(1) title "Istio", "linkerd/grouped_mem_file_200_3_10" using 2:xtic(1) title "Linkerd"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_200_3_20.png"
set title "SMTs Clustered Avg Memory - 200 Users, 20 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_200_3_20" using 2:xtic(1) title "Kubernetes", "istio/grouped_mem_file_200_3_20" using 2:xtic(1) title "Istio", "linkerd/grouped_mem_file_200_3_20" using 2:xtic(1) title "Linkerd"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_200_3_40.png"
set title "SMTs Clustered Avg Memory - 200 Users, 40 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_200_3_40" using 2:xtic(1) title "Kubernetes", "istio/grouped_mem_file_200_3_40" using 2:xtic(1) title "Istio", "linkerd/grouped_mem_file_200_3_40" using 2:xtic(1) title "Linkerd"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_200_3_60.png"
set title "SMTs Clustered Avg Memory - 200 Users, 60 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_200_3_60" using 2:xtic(1) title "Kubernetes", "istio/grouped_mem_file_200_3_60" using 2:xtic(1) title "Istio", "linkerd/grouped_mem_file_200_3_60" using 2:xtic(1) title "Linkerd"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_200_3_80.png"
set title "SMTs Clustered Avg Memory - 200 Users, 80 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_200_3_80" using 2:xtic(1) title "Kubernetes", "istio/grouped_mem_file_200_3_80" using 2:xtic(1) title "Istio", "linkerd/grouped_mem_file_200_3_80" using 2:xtic(1) title "Linkerd"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_400_3_10.png"
set title "SMTs Clustered Avg Memory - 400 Users, 10 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_400_3_10" using 2:xtic(1) title "Kubernetes", "istio/grouped_mem_file_400_3_10" using 2:xtic(1) title "Istio", "linkerd/grouped_mem_file_400_3_10" using 2:xtic(1) title "Linkerd"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_400_3_20.png"
set title "SMTs Clustered Avg Memory - 400 Users, 20 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_400_3_20" using 2:xtic(1) title "Kubernetes", "istio/grouped_mem_file_400_3_20" using 2:xtic(1) title "Istio", "linkerd/grouped_mem_file_400_3_20" using 2:xtic(1) title "Linkerd"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_400_3_40.png"
set title "SMTs Clustered Avg Memory - 400 Users, 40 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_400_3_40" using 2:xtic(1) title "Kubernetes", "istio/grouped_mem_file_400_3_40" using 2:xtic(1) title "Istio", "linkerd/grouped_mem_file_400_3_40" using 2:xtic(1) title "Linkerd"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_400_3_60.png"
set title "SMTs Clustered Avg Memory - 400 Users, 60 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_400_3_60" using 2:xtic(1) title "Kubernetes", "istio/grouped_mem_file_400_3_60" using 2:xtic(1) title "Istio", "linkerd/grouped_mem_file_400_3_60" using 2:xtic(1) title "Linkerd"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_400_3_80.png"
set title "SMTs Clustered Avg Memory - 400 Users, 80 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_400_3_80" using 2:xtic(1) title "Kubernetes", "istio/grouped_mem_file_400_3_80" using 2:xtic(1) title "Istio", "linkerd/grouped_mem_file_400_3_80" using 2:xtic(1) title "Linkerd"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_600_3_10.png"
set title "SMTs Clustered Avg Memory - 600 Users, 10 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_600_3_10" using 2:xtic(1) title "Kubernetes", "istio/grouped_mem_file_600_3_10" using 2:xtic(1) title "Istio", "linkerd/grouped_mem_file_600_3_10" using 2:xtic(1) title "Linkerd"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_600_3_20.png"
set title "SMTs Clustered Avg Memory - 600 Users, 20 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_600_3_20" using 2:xtic(1) title "Kubernetes", "istio/grouped_mem_file_600_3_20" using 2:xtic(1) title "Istio", "linkerd/grouped_mem_file_600_3_20" using 2:xtic(1) title "Linkerd"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_600_3_40.png"
set title "SMTs Clustered Avg Memory - 600 Users, 40 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_600_3_40" using 2:xtic(1) title "Kubernetes", "istio/grouped_mem_file_600_3_40" using 2:xtic(1) title "Istio", "linkerd/grouped_mem_file_600_3_40" using 2:xtic(1) title "Linkerd"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_600_3_60.png"
set title "SMTs Clustered Avg Memory - 600 Users, 60 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_600_3_60" using 2:xtic(1) title "Kubernetes", "istio/grouped_mem_file_600_3_60" using 2:xtic(1) title "Istio", "linkerd/grouped_mem_file_600_3_60" using 2:xtic(1) title "Linkerd"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_600_3_80.png"
set title "SMTs Clustered Avg Memory - 600 Users, 80 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_600_3_80" using 2:xtic(1) title "Kubernetes", "istio/grouped_mem_file_600_3_80" using 2:xtic(1) title "Istio", "linkerd/grouped_mem_file_600_3_80" using 2:xtic(1) title "Linkerd"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_800_3_10.png"
set title "SMTs Clustered Avg Memory - 800 Users, 10 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_800_3_10" using 2:xtic(1) title "Kubernetes", "istio/grouped_mem_file_800_3_10" using 2:xtic(1) title "Istio", "linkerd/grouped_mem_file_800_3_10" using 2:xtic(1) title "Linkerd"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_800_3_20.png"
set title "SMTs Clustered Avg Memory - 800 Users, 20 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_800_3_20" using 2:xtic(1) title "Kubernetes", "istio/grouped_mem_file_800_3_20" using 2:xtic(1) title "Istio", "linkerd/grouped_mem_file_800_3_20" using 2:xtic(1) title "Linkerd"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_800_3_40.png"
set title "SMTs Clustered Avg Memory - 800 Users, 40 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_800_3_40" using 2:xtic(1) title "Kubernetes", "istio/grouped_mem_file_800_3_40" using 2:xtic(1) title "Istio", "linkerd/grouped_mem_file_800_3_40" using 2:xtic(1) title "Linkerd"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_800_3_60.png"
set title "SMTs Clustered Avg Memory - 800 Users, 60 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_800_3_60" using 2:xtic(1) title "Kubernetes", "istio/grouped_mem_file_800_3_60" using 2:xtic(1) title "Istio", "linkerd/grouped_mem_file_800_3_60" using 2:xtic(1) title "Linkerd"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_memory_800_3_80.png"
set title "SMTs Clustered Avg Memory - 800 Users, 80 Services"
set xlabel "Application Area"
set ylabel "Memory Used (Bytes)"
set xtics rotate by -45
plot "kubernetes/grouped_mem_file_800_3_80" using 2:xtic(1) title "Kubernetes", "istio/grouped_mem_file_800_3_80" using 2:xtic(1) title "Istio", "linkerd/grouped_mem_file_800_3_80" using 2:xtic(1) title "Linkerd"

#Next plot starts here
