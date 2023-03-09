set datafile separator ','
set terminal png
set output "smts_proxy_mem_100_10_20.png"
set title "SMTs Data Plane Usage per Proxy - 100 Users, 10 RPU, 20 Microservices"
set style histogram cluster gap 2
set size ratio 0.75 
set grid
set xlabel "Service Mesh"
set ylabel "Memory Usage (Bytes)"
set xtics rotate by -45

set xrange [0:3]

plot "istio/mem_data_plane_by_proxy_100_10_20" using ($0/$0):2:xtic("Istio") title "Istio" lc rgb "#7570b3", "linkerd/mem_data_plane_by_proxy_100_10_20" using ($0/$0 + 1):2:xtic("Linkerd") title "Linkerd" lc rgb "#d95f02"


#Next plot starts here
set datafile separator ','
set terminal png
set output "smts_proxy_mem_100_10_40.png"
set title "SMTs Data Plane Usage per Proxy - 100 Users, 10 RPU, 40 Microservices"
set style histogram cluster gap 2
set size ratio 0.75 
set grid
set xlabel "Service Mesh"
set ylabel "Memory Usage (Bytes)"
set xtics rotate by -45

set xrange [0:3]

plot "istio/mem_data_plane_by_proxy_100_10_40" using ($0/$0):2:xtic("Istio") title "Istio" lc rgb "#7570b3", "linkerd/mem_data_plane_by_proxy_100_10_40" using ($0/$0 + 1):2:xtic("Linkerd") title "Linkerd" lc rgb "#d95f02"


#Next plot starts here
set datafile separator ','
set terminal png
set output "smts_proxy_mem_100_10_80.png"
set title "SMTs Data Plane Usage per Proxy - 100 Users, 10 RPU, 80 Microservices"
set style histogram cluster gap 2
set size ratio 0.75 
set grid
set xlabel "Service Mesh"
set ylabel "Memory Usage (Bytes)"
set xtics rotate by -45

set xrange [0:3]

plot "istio/mem_data_plane_by_proxy_100_10_80" using ($0/$0):2:xtic("Istio") title "Istio" lc rgb "#7570b3", "linkerd/mem_data_plane_by_proxy_100_10_80" using ($0/$0 + 1):2:xtic("Linkerd") title "Linkerd" lc rgb "#d95f02"


#Next plot starts here
set datafile separator ','
set terminal png
set output "smts_proxy_mem_200_10_20.png"
set title "SMTs Data Plane Usage per Proxy - 200 Users, 10 RPU, 20 Microservices"
set style histogram cluster gap 2
set size ratio 0.75 
set grid
set xlabel "Service Mesh"
set ylabel "Memory Usage (Bytes)"
set xtics rotate by -45

set xrange [0:3]

plot "istio/mem_data_plane_by_proxy_200_10_20" using ($0/$0):2:xtic("Istio") title "Istio" lc rgb "#7570b3", "linkerd/mem_data_plane_by_proxy_200_10_20" using ($0/$0 + 1):2:xtic("Linkerd") title "Linkerd" lc rgb "#d95f02"


#Next plot starts here
set datafile separator ','
set terminal png
set output "smts_proxy_mem_200_10_40.png"
set title "SMTs Data Plane Usage per Proxy - 200 Users, 10 RPU, 40 Microservices"
set style histogram cluster gap 2
set size ratio 0.75 
set grid
set xlabel "Service Mesh"
set ylabel "Memory Usage (Bytes)"
set xtics rotate by -45

set xrange [0:3]

plot "istio/mem_data_plane_by_proxy_200_10_40" using ($0/$0):2:xtic("Istio") title "Istio" lc rgb "#7570b3", "linkerd/mem_data_plane_by_proxy_200_10_40" using ($0/$0 + 1):2:xtic("Linkerd") title "Linkerd" lc rgb "#d95f02"


#Next plot starts here
set datafile separator ','
set terminal png
set output "smts_proxy_mem_200_10_80.png"
set title "SMTs Data Plane Usage per Proxy - 200 Users, 10 RPU, 80 Microservices"
set style histogram cluster gap 2
set size ratio 0.75 
set grid
set xlabel "Service Mesh"
set ylabel "Memory Usage (Bytes)"
set xtics rotate by -45

set xrange [0:3]

plot "istio/mem_data_plane_by_proxy_200_10_80" using ($0/$0):2:xtic("Istio") title "Istio" lc rgb "#7570b3", "linkerd/mem_data_plane_by_proxy_200_10_80" using ($0/$0 + 1):2:xtic("Linkerd") title "Linkerd" lc rgb "#d95f02"


#Next plot starts here
set datafile separator ','
set terminal png
set output "smts_proxy_mem_400_10_20.png"
set title "SMTs Data Plane Usage per Proxy - 400 Users, 10 RPU, 20 Microservices"
set style histogram cluster gap 2
set size ratio 0.75 
set grid
set xlabel "Service Mesh"
set ylabel "Memory Usage (Bytes)"
set xtics rotate by -45

set xrange [0:3]

plot "istio/mem_data_plane_by_proxy_400_10_20" using ($0/$0):2:xtic("Istio") title "Istio" lc rgb "#7570b3", "linkerd/mem_data_plane_by_proxy_400_10_20" using ($0/$0 + 1):2:xtic("Linkerd") title "Linkerd" lc rgb "#d95f02"


#Next plot starts here
set datafile separator ','
set terminal png
set output "smts_proxy_mem_400_10_40.png"
set title "SMTs Data Plane Usage per Proxy - 400 Users, 10 RPU, 40 Microservices"
set style histogram cluster gap 2
set size ratio 0.75 
set grid
set xlabel "Service Mesh"
set ylabel "Memory Usage (Bytes)"
set xtics rotate by -45

set xrange [0:3]

plot "istio/mem_data_plane_by_proxy_400_10_40" using ($0/$0):2:xtic("Istio") title "Istio" lc rgb "#7570b3", "linkerd/mem_data_plane_by_proxy_400_10_40" using ($0/$0 + 1):2:xtic("Linkerd") title "Linkerd" lc rgb "#d95f02"


#Next plot starts here
set datafile separator ','
set terminal png
set output "smts_proxy_mem_400_10_80.png"
set title "SMTs Data Plane Usage per Proxy - 400 Users, 10 RPU, 80 Microservices"
set style histogram cluster gap 2
set size ratio 0.75 
set grid
set xlabel "Service Mesh"
set ylabel "Memory Usage (Bytes)"
set xtics rotate by -45

set xrange [0:3]

plot "istio/mem_data_plane_by_proxy_400_10_80" using ($0/$0):2:xtic("Istio") title "Istio" lc rgb "#7570b3", "linkerd/mem_data_plane_by_proxy_400_10_80" using ($0/$0 + 1):2:xtic("Linkerd") title "Linkerd" lc rgb "#d95f02"


#Next plot starts here
set datafile separator ','
set terminal png
set output "smts_proxy_mem_600_10_20.png"
set title "SMTs Data Plane Usage per Proxy - 600 Users, 10 RPU, 20 Microservices"
set style histogram cluster gap 2
set size ratio 0.75 
set grid
set xlabel "Service Mesh"
set ylabel "Memory Usage (Bytes)"
set xtics rotate by -45

set xrange [0:3]

plot "istio/mem_data_plane_by_proxy_600_10_20" using ($0/$0):2:xtic("Istio") title "Istio" lc rgb "#7570b3", "linkerd/mem_data_plane_by_proxy_600_10_20" using ($0/$0 + 1):2:xtic("Linkerd") title "Linkerd" lc rgb "#d95f02"


#Next plot starts here
set datafile separator ','
set terminal png
set output "smts_proxy_mem_600_10_40.png"
set title "SMTs Data Plane Usage per Proxy - 600 Users, 10 RPU, 40 Microservices"
set style histogram cluster gap 2
set size ratio 0.75 
set grid
set xlabel "Service Mesh"
set ylabel "Memory Usage (Bytes)"
set xtics rotate by -45

set xrange [0:3]

plot "istio/mem_data_plane_by_proxy_600_10_40" using ($0/$0):2:xtic("Istio") title "Istio" lc rgb "#7570b3", "linkerd/mem_data_plane_by_proxy_600_10_40" using ($0/$0 + 1):2:xtic("Linkerd") title "Linkerd" lc rgb "#d95f02"


#Next plot starts here
set datafile separator ','
set terminal png
set output "smts_proxy_mem_600_10_80.png"
set title "SMTs Data Plane Usage per Proxy - 600 Users, 10 RPU, 80 Microservices"
set style histogram cluster gap 2
set size ratio 0.75 
set grid
set xlabel "Service Mesh"
set ylabel "Memory Usage (Bytes)"
set xtics rotate by -45

set xrange [0:3]

plot "istio/mem_data_plane_by_proxy_600_10_80" using ($0/$0):2:xtic("Istio") title "Istio" lc rgb "#7570b3", "linkerd/mem_data_plane_by_proxy_600_10_80" using ($0/$0 + 1):2:xtic("Linkerd") title "Linkerd" lc rgb "#d95f02"


#Next plot starts here
set datafile separator ','
set terminal png
set output "smts_proxy_mem_800_10_20.png"
set title "SMTs Data Plane Usage per Proxy - 800 Users, 10 RPU, 20 Microservices"
set style histogram cluster gap 2
set size ratio 0.75 
set grid
set xlabel "Service Mesh"
set ylabel "Memory Usage (Bytes)"
set xtics rotate by -45

set xrange [0:3]

plot "istio/mem_data_plane_by_proxy_800_10_20" using ($0/$0):2:xtic("Istio") title "Istio" lc rgb "#7570b3", "linkerd/mem_data_plane_by_proxy_800_10_20" using ($0/$0 + 1):2:xtic("Linkerd") title "Linkerd" lc rgb "#d95f02"


#Next plot starts here
set datafile separator ','
set terminal png
set output "smts_proxy_mem_800_10_40.png"
set title "SMTs Data Plane Usage per Proxy - 800 Users, 10 RPU, 40 Microservices"
set style histogram cluster gap 2
set size ratio 0.75 
set grid
set xlabel "Service Mesh"
set ylabel "Memory Usage (Bytes)"
set xtics rotate by -45

set xrange [0:3]

plot "istio/mem_data_plane_by_proxy_800_10_40" using ($0/$0):2:xtic("Istio") title "Istio" lc rgb "#7570b3", "linkerd/mem_data_plane_by_proxy_800_10_40" using ($0/$0 + 1):2:xtic("Linkerd") title "Linkerd" lc rgb "#d95f02"


#Next plot starts here
set datafile separator ','
set terminal png
set output "smts_proxy_mem_800_10_80.png"
set title "SMTs Data Plane Usage per Proxy - 800 Users, 10 RPU, 80 Microservices"
set style histogram cluster gap 2
set size ratio 0.75 
set grid
set xlabel "Service Mesh"
set ylabel "Memory Usage (Bytes)"
set xtics rotate by -45

set xrange [0:3]

plot "istio/mem_data_plane_by_proxy_800_10_80" using ($0/$0):2:xtic("Istio") title "Istio" lc rgb "#7570b3", "linkerd/mem_data_plane_by_proxy_800_10_80" using ($0/$0 + 1):2:xtic("Linkerd") title "Linkerd" lc rgb "#d95f02"


#Next plot starts here
