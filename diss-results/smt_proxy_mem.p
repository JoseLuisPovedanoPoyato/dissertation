set datafile separator ','
set terminal png
set output "smts_proxy_mem_100_5_20.png"
set title "SMTs Data Plane Usage per Proxy - 100 Users, 5 RPU, 20 Microservices"
set style histogram cluster gap 2
set size ratio 0.75 
set grid
set xlabel "Service Mesh"
set ylabel "Memory Usage (Bytes)"
set xtics rotate by -45

set xrange [0:3]

plot "istio/mem_data_plane_by_proxy_100_5_20" using ($0/$0):2:xtic("Istio") title "Istio", "linkerd/mem_data_plane_by_proxy_100_5_20" using ($0/$0 + 1):2:xtic("Linkerd") title "Linkerd"


#Next plot starts here
set datafile separator ','
set terminal png
set output "smts_proxy_mem_100_5_40.png"
set title "SMTs Data Plane Usage per Proxy - 100 Users, 5 RPU, 40 Microservices"
set style histogram cluster gap 2
set size ratio 0.75 
set grid
set xlabel "Service Mesh"
set ylabel "Memory Usage (Bytes)"
set xtics rotate by -45

set xrange [0:3]

plot "istio/mem_data_plane_by_proxy_100_5_40" using ($0/$0):2:xtic("Istio") title "Istio", "linkerd/mem_data_plane_by_proxy_100_5_40" using ($0/$0 + 1):2:xtic("Linkerd") title "Linkerd"


#Next plot starts here
set datafile separator ','
set terminal png
set output "smts_proxy_mem_100_5_80.png"
set title "SMTs Data Plane Usage per Proxy - 100 Users, 5 RPU, 80 Microservices"
set style histogram cluster gap 2
set size ratio 0.75 
set grid
set xlabel "Service Mesh"
set ylabel "Memory Usage (Bytes)"
set xtics rotate by -45

set xrange [0:3]

plot "istio/mem_data_plane_by_proxy_100_5_80" using ($0/$0):2:xtic("Istio") title "Istio", "linkerd/mem_data_plane_by_proxy_100_5_80" using ($0/$0 + 1):2:xtic("Linkerd") title "Linkerd"


#Next plot starts here
set datafile separator ','
set terminal png
set output "smts_proxy_mem_200_5_20.png"
set title "SMTs Data Plane Usage per Proxy - 200 Users, 5 RPU, 20 Microservices"
set style histogram cluster gap 2
set size ratio 0.75 
set grid
set xlabel "Service Mesh"
set ylabel "Memory Usage (Bytes)"
set xtics rotate by -45

set xrange [0:3]

plot "istio/mem_data_plane_by_proxy_200_5_20" using ($0/$0):2:xtic("Istio") title "Istio", "linkerd/mem_data_plane_by_proxy_200_5_20" using ($0/$0 + 1):2:xtic("Linkerd") title "Linkerd"


#Next plot starts here
set datafile separator ','
set terminal png
set output "smts_proxy_mem_200_5_40.png"
set title "SMTs Data Plane Usage per Proxy - 200 Users, 5 RPU, 40 Microservices"
set style histogram cluster gap 2
set size ratio 0.75 
set grid
set xlabel "Service Mesh"
set ylabel "Memory Usage (Bytes)"
set xtics rotate by -45

set xrange [0:3]

plot "istio/mem_data_plane_by_proxy_200_5_40" using ($0/$0):2:xtic("Istio") title "Istio", "linkerd/mem_data_plane_by_proxy_200_5_40" using ($0/$0 + 1):2:xtic("Linkerd") title "Linkerd"


#Next plot starts here
set datafile separator ','
set terminal png
set output "smts_proxy_mem_200_5_80.png"
set title "SMTs Data Plane Usage per Proxy - 200 Users, 5 RPU, 80 Microservices"
set style histogram cluster gap 2
set size ratio 0.75 
set grid
set xlabel "Service Mesh"
set ylabel "Memory Usage (Bytes)"
set xtics rotate by -45

set xrange [0:3]

plot "istio/mem_data_plane_by_proxy_200_5_80" using ($0/$0):2:xtic("Istio") title "Istio", "linkerd/mem_data_plane_by_proxy_200_5_80" using ($0/$0 + 1):2:xtic("Linkerd") title "Linkerd"


#Next plot starts here
set datafile separator ','
set terminal png
set output "smts_proxy_mem_400_5_20.png"
set title "SMTs Data Plane Usage per Proxy - 400 Users, 5 RPU, 20 Microservices"
set style histogram cluster gap 2
set size ratio 0.75 
set grid
set xlabel "Service Mesh"
set ylabel "Memory Usage (Bytes)"
set xtics rotate by -45

set xrange [0:3]

plot "istio/mem_data_plane_by_proxy_400_5_20" using ($0/$0):2:xtic("Istio") title "Istio", "linkerd/mem_data_plane_by_proxy_400_5_20" using ($0/$0 + 1):2:xtic("Linkerd") title "Linkerd"


#Next plot starts here
set datafile separator ','
set terminal png
set output "smts_proxy_mem_400_5_40.png"
set title "SMTs Data Plane Usage per Proxy - 400 Users, 5 RPU, 40 Microservices"
set style histogram cluster gap 2
set size ratio 0.75 
set grid
set xlabel "Service Mesh"
set ylabel "Memory Usage (Bytes)"
set xtics rotate by -45

set xrange [0:3]

plot "istio/mem_data_plane_by_proxy_400_5_40" using ($0/$0):2:xtic("Istio") title "Istio", "linkerd/mem_data_plane_by_proxy_400_5_40" using ($0/$0 + 1):2:xtic("Linkerd") title "Linkerd"


#Next plot starts here
set datafile separator ','
set terminal png
set output "smts_proxy_mem_400_5_80.png"
set title "SMTs Data Plane Usage per Proxy - 400 Users, 5 RPU, 80 Microservices"
set style histogram cluster gap 2
set size ratio 0.75 
set grid
set xlabel "Service Mesh"
set ylabel "Memory Usage (Bytes)"
set xtics rotate by -45

set xrange [0:3]

plot "istio/mem_data_plane_by_proxy_400_5_80" using ($0/$0):2:xtic("Istio") title "Istio", "linkerd/mem_data_plane_by_proxy_400_5_80" using ($0/$0 + 1):2:xtic("Linkerd") title "Linkerd"


#Next plot starts here
set datafile separator ','
set terminal png
set output "smts_proxy_mem_600_5_20.png"
set title "SMTs Data Plane Usage per Proxy - 600 Users, 5 RPU, 20 Microservices"
set style histogram cluster gap 2
set size ratio 0.75 
set grid
set xlabel "Service Mesh"
set ylabel "Memory Usage (Bytes)"
set xtics rotate by -45

set xrange [0:3]

plot "istio/mem_data_plane_by_proxy_600_5_20" using ($0/$0):2:xtic("Istio") title "Istio", "linkerd/mem_data_plane_by_proxy_600_5_20" using ($0/$0 + 1):2:xtic("Linkerd") title "Linkerd"


#Next plot starts here
set datafile separator ','
set terminal png
set output "smts_proxy_mem_600_5_40.png"
set title "SMTs Data Plane Usage per Proxy - 600 Users, 5 RPU, 40 Microservices"
set style histogram cluster gap 2
set size ratio 0.75 
set grid
set xlabel "Service Mesh"
set ylabel "Memory Usage (Bytes)"
set xtics rotate by -45

set xrange [0:3]

plot "istio/mem_data_plane_by_proxy_600_5_40" using ($0/$0):2:xtic("Istio") title "Istio", "linkerd/mem_data_plane_by_proxy_600_5_40" using ($0/$0 + 1):2:xtic("Linkerd") title "Linkerd"


#Next plot starts here
set datafile separator ','
set terminal png
set output "smts_proxy_mem_600_5_80.png"
set title "SMTs Data Plane Usage per Proxy - 600 Users, 5 RPU, 80 Microservices"
set style histogram cluster gap 2
set size ratio 0.75 
set grid
set xlabel "Service Mesh"
set ylabel "Memory Usage (Bytes)"
set xtics rotate by -45

set xrange [0:3]

plot "istio/mem_data_plane_by_proxy_600_5_80" using ($0/$0):2:xtic("Istio") title "Istio", "linkerd/mem_data_plane_by_proxy_600_5_80" using ($0/$0 + 1):2:xtic("Linkerd") title "Linkerd"


#Next plot starts here
set datafile separator ','
set terminal png
set output "smts_proxy_mem_800_5_20.png"
set title "SMTs Data Plane Usage per Proxy - 800 Users, 5 RPU, 20 Microservices"
set style histogram cluster gap 2
set size ratio 0.75 
set grid
set xlabel "Service Mesh"
set ylabel "Memory Usage (Bytes)"
set xtics rotate by -45

set xrange [0:3]

plot "istio/mem_data_plane_by_proxy_800_5_20" using ($0/$0):2:xtic("Istio") title "Istio", "linkerd/mem_data_plane_by_proxy_800_5_20" using ($0/$0 + 1):2:xtic("Linkerd") title "Linkerd"


#Next plot starts here
set datafile separator ','
set terminal png
set output "smts_proxy_mem_800_5_40.png"
set title "SMTs Data Plane Usage per Proxy - 800 Users, 5 RPU, 40 Microservices"
set style histogram cluster gap 2
set size ratio 0.75 
set grid
set xlabel "Service Mesh"
set ylabel "Memory Usage (Bytes)"
set xtics rotate by -45

set xrange [0:3]

plot "istio/mem_data_plane_by_proxy_800_5_40" using ($0/$0):2:xtic("Istio") title "Istio", "linkerd/mem_data_plane_by_proxy_800_5_40" using ($0/$0 + 1):2:xtic("Linkerd") title "Linkerd"


#Next plot starts here
set datafile separator ','
set terminal png
set output "smts_proxy_mem_800_5_80.png"
set title "SMTs Data Plane Usage per Proxy - 800 Users, 5 RPU, 80 Microservices"
set style histogram cluster gap 2
set size ratio 0.75 
set grid
set xlabel "Service Mesh"
set ylabel "Memory Usage (Bytes)"
set xtics rotate by -45

set xrange [0:3]

plot "istio/mem_data_plane_by_proxy_800_5_80" using ($0/$0):2:xtic("Istio") title "Istio", "linkerd/mem_data_plane_by_proxy_800_5_80" using ($0/$0 + 1):2:xtic("Linkerd") title "Linkerd"


#Next plot starts here
