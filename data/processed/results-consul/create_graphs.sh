gnuplot smt_latency.p
gnuplot smt_memory.p
gnuplot smt_grouped_mem.p
gnuplot smt_grouped_cpu.p
gnuplot smts_only_cpu.p
gnuplot smt_proxy_mem.p
python smt_boxplots.py
python cpu_stacked_bar_chart.py

cd kubernetes
pwd
gnuplot latency_users.p
gnuplot latency_services.p

cd ../istio
pwd
gnuplot latency_users.p
gnuplot latency_services.p

cd ../linkerd
pwd
gnuplot latency_users.p
gnuplot latency_services.p

cd ..