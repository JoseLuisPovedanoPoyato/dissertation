set datafile separator ','

set size 1, 1
set datafile separator ','
set terminal png size 700, 700  
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set output "control_plane_cpu_400_10_40_i.png"
set title "Control Plane CPU Usage - 400 Users, 10 RPU, 40 Services"
set xlabel "Service Mesh"
set ylabel "CPU Used (Seconds)"

set boxwidth 0.5
set style fill solid
plot "cpu_control.txt" using 2:xtic(1) with boxes lc rgb "#7570b3" title "Istio"