set size 1, 1
set datafile separator ','
set terminal png size 700, 700
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_cpu_100_5_20.png"
set title "SMTs CPU Usage Distribution - 100 Users, 5 RPU, 20 Services"
set xlabel "Application Area"
set ylabel "CPU Used (s)"
set xtics rotate by -45
plot "kubernetes/grouped_cpu_file_100_5_20" using 2:xtic(1) title "Kubernetes", "istio/grouped_cpu_file_100_5_20" using 2:xtic(1) title "Istio", "linkerd/grouped_cpu_file_100_5_20" using 2:xtic(1) title "Linkerd"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_cpu_100_5_40.png"
set title "SMTs CPU Usage Distribution - 100 Users, 5 RPU, 40 Services"
set xlabel "Application Area"
set ylabel "CPU Used (s)"
set xtics rotate by -45
plot "kubernetes/grouped_cpu_file_100_5_40" using 2:xtic(1) title "Kubernetes", "istio/grouped_cpu_file_100_5_40" using 2:xtic(1) title "Istio", "linkerd/grouped_cpu_file_100_5_40" using 2:xtic(1) title "Linkerd"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_cpu_100_5_80.png"
set title "SMTs CPU Usage Distribution - 100 Users, 5 RPU, 80 Services"
set xlabel "Application Area"
set ylabel "CPU Used (s)"
set xtics rotate by -45
plot "kubernetes/grouped_cpu_file_100_5_80" using 2:xtic(1) title "Kubernetes", "istio/grouped_cpu_file_100_5_80" using 2:xtic(1) title "Istio", "linkerd/grouped_cpu_file_100_5_80" using 2:xtic(1) title "Linkerd"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_cpu_200_5_20.png"
set title "SMTs CPU Usage Distribution - 200 Users, 5 RPU, 20 Services"
set xlabel "Application Area"
set ylabel "CPU Used (s)"
set xtics rotate by -45
plot "kubernetes/grouped_cpu_file_200_5_20" using 2:xtic(1) title "Kubernetes", "istio/grouped_cpu_file_200_5_20" using 2:xtic(1) title "Istio", "linkerd/grouped_cpu_file_200_5_20" using 2:xtic(1) title "Linkerd"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_cpu_200_5_40.png"
set title "SMTs CPU Usage Distribution - 200 Users, 5 RPU, 40 Services"
set xlabel "Application Area"
set ylabel "CPU Used (s)"
set xtics rotate by -45
plot "kubernetes/grouped_cpu_file_200_5_40" using 2:xtic(1) title "Kubernetes", "istio/grouped_cpu_file_200_5_40" using 2:xtic(1) title "Istio", "linkerd/grouped_cpu_file_200_5_40" using 2:xtic(1) title "Linkerd"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_cpu_200_5_80.png"
set title "SMTs CPU Usage Distribution - 200 Users, 5 RPU, 80 Services"
set xlabel "Application Area"
set ylabel "CPU Used (s)"
set xtics rotate by -45
plot "kubernetes/grouped_cpu_file_200_5_80" using 2:xtic(1) title "Kubernetes", "istio/grouped_cpu_file_200_5_80" using 2:xtic(1) title "Istio", "linkerd/grouped_cpu_file_200_5_80" using 2:xtic(1) title "Linkerd"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_cpu_400_5_20.png"
set title "SMTs CPU Usage Distribution - 400 Users, 5 RPU, 20 Services"
set xlabel "Application Area"
set ylabel "CPU Used (s)"
set xtics rotate by -45
plot "kubernetes/grouped_cpu_file_400_5_20" using 2:xtic(1) title "Kubernetes", "istio/grouped_cpu_file_400_5_20" using 2:xtic(1) title "Istio", "linkerd/grouped_cpu_file_400_5_20" using 2:xtic(1) title "Linkerd"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_cpu_400_5_40.png"
set title "SMTs CPU Usage Distribution - 400 Users, 5 RPU, 40 Services"
set xlabel "Application Area"
set ylabel "CPU Used (s)"
set xtics rotate by -45
plot "kubernetes/grouped_cpu_file_400_5_40" using 2:xtic(1) title "Kubernetes", "istio/grouped_cpu_file_400_5_40" using 2:xtic(1) title "Istio", "linkerd/grouped_cpu_file_400_5_40" using 2:xtic(1) title "Linkerd"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_cpu_400_5_80.png"
set title "SMTs CPU Usage Distribution - 400 Users, 5 RPU, 80 Services"
set xlabel "Application Area"
set ylabel "CPU Used (s)"
set xtics rotate by -45
plot "kubernetes/grouped_cpu_file_400_5_80" using 2:xtic(1) title "Kubernetes", "istio/grouped_cpu_file_400_5_80" using 2:xtic(1) title "Istio", "linkerd/grouped_cpu_file_400_5_80" using 2:xtic(1) title "Linkerd"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_cpu_600_5_20.png"
set title "SMTs CPU Usage Distribution - 600 Users, 5 RPU, 20 Services"
set xlabel "Application Area"
set ylabel "CPU Used (s)"
set xtics rotate by -45
plot "kubernetes/grouped_cpu_file_600_5_20" using 2:xtic(1) title "Kubernetes", "istio/grouped_cpu_file_600_5_20" using 2:xtic(1) title "Istio", "linkerd/grouped_cpu_file_600_5_20" using 2:xtic(1) title "Linkerd"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_cpu_600_5_40.png"
set title "SMTs CPU Usage Distribution - 600 Users, 5 RPU, 40 Services"
set xlabel "Application Area"
set ylabel "CPU Used (s)"
set xtics rotate by -45
plot "kubernetes/grouped_cpu_file_600_5_40" using 2:xtic(1) title "Kubernetes", "istio/grouped_cpu_file_600_5_40" using 2:xtic(1) title "Istio", "linkerd/grouped_cpu_file_600_5_40" using 2:xtic(1) title "Linkerd"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_cpu_600_5_80.png"
set title "SMTs CPU Usage Distribution - 600 Users, 5 RPU, 80 Services"
set xlabel "Application Area"
set ylabel "CPU Used (s)"
set xtics rotate by -45
plot "kubernetes/grouped_cpu_file_600_5_80" using 2:xtic(1) title "Kubernetes", "istio/grouped_cpu_file_600_5_80" using 2:xtic(1) title "Istio", "linkerd/grouped_cpu_file_600_5_80" using 2:xtic(1) title "Linkerd"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_cpu_800_5_20.png"
set title "SMTs CPU Usage Distribution - 800 Users, 5 RPU, 20 Services"
set xlabel "Application Area"
set ylabel "CPU Used (s)"
set xtics rotate by -45
plot "kubernetes/grouped_cpu_file_800_5_20" using 2:xtic(1) title "Kubernetes", "istio/grouped_cpu_file_800_5_20" using 2:xtic(1) title "Istio", "linkerd/grouped_cpu_file_800_5_20" using 2:xtic(1) title "Linkerd"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_cpu_800_5_40.png"
set title "SMTs CPU Usage Distribution - 800 Users, 5 RPU, 40 Services"
set xlabel "Application Area"
set ylabel "CPU Used (s)"
set xtics rotate by -45
plot "kubernetes/grouped_cpu_file_800_5_40" using 2:xtic(1) title "Kubernetes", "istio/grouped_cpu_file_800_5_40" using 2:xtic(1) title "Istio", "linkerd/grouped_cpu_file_800_5_40" using 2:xtic(1) title "Linkerd"

#Next plot starts here
set size 1, 1
set datafile separator ','
set terminal png size 700, 700
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "smts_grouped_cpu_800_5_80.png"
set title "SMTs CPU Usage Distribution - 800 Users, 5 RPU, 80 Services"
set xlabel "Application Area"
set ylabel "CPU Used (s)"
set xtics rotate by -45
plot "kubernetes/grouped_cpu_file_800_5_80" using 2:xtic(1) title "Kubernetes", "istio/grouped_cpu_file_800_5_80" using 2:xtic(1) title "Istio", "linkerd/grouped_cpu_file_800_5_80" using 2:xtic(1) title "Linkerd"

#Next plot starts here
