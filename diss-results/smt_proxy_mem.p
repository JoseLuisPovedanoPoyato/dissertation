set datafile separator ','
set terminal png
set output "smts_proxy_mem_100_3_20.png"
set title "SMTs Data Plane Usage per Proxy - 100 Users, 3 RPU, 20 Microservices"
set style histogram cluster gap 2
set size ratio 0.75 
set grid
set xlabel "Service Mesh"
set ylabel "Memory Usage (Bytes)"
set xtics rotate by -45

set xrange [0:3]

plot "istio/mem_data_plane_by_proxy_100_3_20" using ($0/$0):2:xtic("Istio") title "Istio", "linkerd/mem_data_plane_by_proxy_100_3_20" using ($0/$0 + 1):2:xtic("Linkerd") title "Linkerd"


#Next plot starts here
set datafile separator ','
set terminal png
set output "smts_proxy_mem_100_3_40.png"
set title "SMTs Data Plane Usage per Proxy - 100 Users, 3 RPU, 40 Microservices"
set style histogram cluster gap 2
set size ratio 0.75 
set grid
set xlabel "Service Mesh"
set ylabel "Memory Usage (Bytes)"
set xtics rotate by -45

set xrange [0:3]

plot "istio/mem_data_plane_by_proxy_100_3_40" using ($0/$0):2:xtic("Istio") title "Istio", "linkerd/mem_data_plane_by_proxy_100_3_40" using ($0/$0 + 1):2:xtic("Linkerd") title "Linkerd"


#Next plot starts here
set datafile separator ','
set terminal png
set output "smts_proxy_mem_100_3_80.png"
set title "SMTs Data Plane Usage per Proxy - 100 Users, 3 RPU, 80 Microservices"
set style histogram cluster gap 2
set size ratio 0.75 
set grid
set xlabel "Service Mesh"
set ylabel "Memory Usage (Bytes)"
set xtics rotate by -45

set xrange [0:3]

plot "istio/mem_data_plane_by_proxy_100_3_80" using ($0/$0):2:xtic("Istio") title "Istio", "linkerd/mem_data_plane_by_proxy_100_3_80" using ($0/$0 + 1):2:xtic("Linkerd") title "Linkerd"


#Next plot starts here
set datafile separator ','
set terminal png
set output "smts_proxy_mem_200_3_20.png"
set title "SMTs Data Plane Usage per Proxy - 200 Users, 3 RPU, 20 Microservices"
set style histogram cluster gap 2
set size ratio 0.75 
set grid
set xlabel "Service Mesh"
set ylabel "Memory Usage (Bytes)"
set xtics rotate by -45

set xrange [0:3]

plot "istio/mem_data_plane_by_proxy_200_3_20" using ($0/$0):2:xtic("Istio") title "Istio", "linkerd/mem_data_plane_by_proxy_200_3_20" using ($0/$0 + 1):2:xtic("Linkerd") title "Linkerd"


#Next plot starts here
set datafile separator ','
set terminal png
set output "smts_proxy_mem_200_3_40.png"
set title "SMTs Data Plane Usage per Proxy - 200 Users, 3 RPU, 40 Microservices"
set style histogram cluster gap 2
set size ratio 0.75 
set grid
set xlabel "Service Mesh"
set ylabel "Memory Usage (Bytes)"
set xtics rotate by -45

set xrange [0:3]

plot "istio/mem_data_plane_by_proxy_200_3_40" using ($0/$0):2:xtic("Istio") title "Istio", "linkerd/mem_data_plane_by_proxy_200_3_40" using ($0/$0 + 1):2:xtic("Linkerd") title "Linkerd"


#Next plot starts here
set datafile separator ','
set terminal png
set output "smts_proxy_mem_200_3_80.png"
set title "SMTs Data Plane Usage per Proxy - 200 Users, 3 RPU, 80 Microservices"
set style histogram cluster gap 2
set size ratio 0.75 
set grid
set xlabel "Service Mesh"
set ylabel "Memory Usage (Bytes)"
set xtics rotate by -45

set xrange [0:3]

plot "istio/mem_data_plane_by_proxy_200_3_80" using ($0/$0):2:xtic("Istio") title "Istio", "linkerd/mem_data_plane_by_proxy_200_3_80" using ($0/$0 + 1):2:xtic("Linkerd") title "Linkerd"


#Next plot starts here
set datafile separator ','
set terminal png
set output "smts_proxy_mem_400_3_20.png"
set title "SMTs Data Plane Usage per Proxy - 400 Users, 3 RPU, 20 Microservices"
set style histogram cluster gap 2
set size ratio 0.75 
set grid
set xlabel "Service Mesh"
set ylabel "Memory Usage (Bytes)"
set xtics rotate by -45

set xrange [0:3]

plot "istio/mem_data_plane_by_proxy_400_3_20" using ($0/$0):2:xtic("Istio") title "Istio", "linkerd/mem_data_plane_by_proxy_400_3_20" using ($0/$0 + 1):2:xtic("Linkerd") title "Linkerd"


#Next plot starts here
set datafile separator ','
set terminal png
set output "smts_proxy_mem_400_3_40.png"
set title "SMTs Data Plane Usage per Proxy - 400 Users, 3 RPU, 40 Microservices"
set style histogram cluster gap 2
set size ratio 0.75 
set grid
set xlabel "Service Mesh"
set ylabel "Memory Usage (Bytes)"
set xtics rotate by -45

set xrange [0:3]

plot "istio/mem_data_plane_by_proxy_400_3_40" using ($0/$0):2:xtic("Istio") title "Istio", "linkerd/mem_data_plane_by_proxy_400_3_40" using ($0/$0 + 1):2:xtic("Linkerd") title "Linkerd"


#Next plot starts here
set datafile separator ','
set terminal png
set output "smts_proxy_mem_400_3_80.png"
set title "SMTs Data Plane Usage per Proxy - 400 Users, 3 RPU, 80 Microservices"
set style histogram cluster gap 2
set size ratio 0.75 
set grid
set xlabel "Service Mesh"
set ylabel "Memory Usage (Bytes)"
set xtics rotate by -45

set xrange [0:3]

plot "istio/mem_data_plane_by_proxy_400_3_80" using ($0/$0):2:xtic("Istio") title "Istio", "linkerd/mem_data_plane_by_proxy_400_3_80" using ($0/$0 + 1):2:xtic("Linkerd") title "Linkerd"


#Next plot starts here
set datafile separator ','
set terminal png
set output "smts_proxy_mem_600_3_20.png"
set title "SMTs Data Plane Usage per Proxy - 600 Users, 3 RPU, 20 Microservices"
set style histogram cluster gap 2
set size ratio 0.75 
set grid
set xlabel "Service Mesh"
set ylabel "Memory Usage (Bytes)"
set xtics rotate by -45

set xrange [0:3]

plot "istio/mem_data_plane_by_proxy_600_3_20" using ($0/$0):2:xtic("Istio") title "Istio", "linkerd/mem_data_plane_by_proxy_600_3_20" using ($0/$0 + 1):2:xtic("Linkerd") title "Linkerd"


#Next plot starts here
set datafile separator ','
set terminal png
set output "smts_proxy_mem_600_3_40.png"
set title "SMTs Data Plane Usage per Proxy - 600 Users, 3 RPU, 40 Microservices"
set style histogram cluster gap 2
set size ratio 0.75 
set grid
set xlabel "Service Mesh"
set ylabel "Memory Usage (Bytes)"
set xtics rotate by -45

set xrange [0:3]

plot "istio/mem_data_plane_by_proxy_600_3_40" using ($0/$0):2:xtic("Istio") title "Istio", "linkerd/mem_data_plane_by_proxy_600_3_40" using ($0/$0 + 1):2:xtic("Linkerd") title "Linkerd"


#Next plot starts here
set datafile separator ','
set terminal png
set output "smts_proxy_mem_600_3_80.png"
set title "SMTs Data Plane Usage per Proxy - 600 Users, 3 RPU, 80 Microservices"
set style histogram cluster gap 2
set size ratio 0.75 
set grid
set xlabel "Service Mesh"
set ylabel "Memory Usage (Bytes)"
set xtics rotate by -45

set xrange [0:3]

plot "istio/mem_data_plane_by_proxy_600_3_80" using ($0/$0):2:xtic("Istio") title "Istio", "linkerd/mem_data_plane_by_proxy_600_3_80" using ($0/$0 + 1):2:xtic("Linkerd") title "Linkerd"


#Next plot starts here
set datafile separator ','
set terminal png
set output "smts_proxy_mem_800_3_20.png"
set title "SMTs Data Plane Usage per Proxy - 800 Users, 3 RPU, 20 Microservices"
set style histogram cluster gap 2
set size ratio 0.75 
set grid
set xlabel "Service Mesh"
set ylabel "Memory Usage (Bytes)"
set xtics rotate by -45

set xrange [0:3]

plot "istio/mem_data_plane_by_proxy_800_3_20" using ($0/$0):2:xtic("Istio") title "Istio", "linkerd/mem_data_plane_by_proxy_800_3_20" using ($0/$0 + 1):2:xtic("Linkerd") title "Linkerd"


#Next plot starts here
set datafile separator ','
set terminal png
set output "smts_proxy_mem_800_3_40.png"
set title "SMTs Data Plane Usage per Proxy - 800 Users, 3 RPU, 40 Microservices"
set style histogram cluster gap 2
set size ratio 0.75 
set grid
set xlabel "Service Mesh"
set ylabel "Memory Usage (Bytes)"
set xtics rotate by -45

set xrange [0:3]

plot "istio/mem_data_plane_by_proxy_800_3_40" using ($0/$0):2:xtic("Istio") title "Istio", "linkerd/mem_data_plane_by_proxy_800_3_40" using ($0/$0 + 1):2:xtic("Linkerd") title "Linkerd"


#Next plot starts here
set datafile separator ','
set terminal png
set output "smts_proxy_mem_800_3_80.png"
set title "SMTs Data Plane Usage per Proxy - 800 Users, 3 RPU, 80 Microservices"
set style histogram cluster gap 2
set size ratio 0.75 
set grid
set xlabel "Service Mesh"
set ylabel "Memory Usage (Bytes)"
set xtics rotate by -45

set xrange [0:3]

plot "istio/mem_data_plane_by_proxy_800_3_80" using ($0/$0):2:xtic("Istio") title "Istio", "linkerd/mem_data_plane_by_proxy_800_3_80" using ($0/$0 + 1):2:xtic("Linkerd") title "Linkerd"


#Next plot starts here
