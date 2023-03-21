#!/bin/bash

users=("100" "200" "400" "600")
requests=("1")
microservices=("10" "20" "40")

### Generate Latency GNU
rm smt_latency.p
touch smt_latency.p
# For each combination of users and microservices
for user in "${users[@]}"; do
  for request in "${requests[@]}"; do
    for service in "${microservices[@]}"; do
      # Read in the template and substitute the users and services
      template=$(sed "s/_user_/$user/g;s/_request_/$request/g;s/_service_/$service/g" smt_latency_template.p)
      # Append the output to the smt_latency.p file
      echo "$template" >> smt_latency.p
    done
  done
done

### Generate Latency BOX_PLOT GNU
rm smt_latency_boxplot.p
touch smt_latency_boxplot.p
# For each combination of users and microservices
for user in "${users[@]}"; do
  for request in "${requests[@]}"; do
    for service in "${microservices[@]}"; do
      # Read in the template and substitute the users and services
      template=$(sed "s/_user_/$user/g;s/_request_/$request/g;s/_service_/$service/g" smt_latency_boxplot_template.p)
      # Append the output to the smt_latency.p file
      echo "$template" >> smt_latency_boxplot.p
    done
  done
done

### Generate Memory GNU
rm smt_memory.p
touch smt_memory.p
# For each combination of users and microservices
for user in "${users[@]}"; do
  for request in "${requests[@]}"; do
    for service in "${microservices[@]}"; do
      # Read in the template and substitute the users and services
      template=$(sed "s/_user_/$user/g;s/_request_/$request/g;s/_service_/$service/g" smt_memory_template.p)
      # Append the output to the smt_memory.p file
      echo "$template" >> smt_memory.p
    done
  done
done

### Generate Grouped Memory GNU
rm smt_grouped_mem.p
touch smt_grouped_mem.p
# For each combination of users and microservices
for user in "${users[@]}"; do
  for request in "${requests[@]}"; do
    for service in "${microservices[@]}"; do
      # Read in the template and substitute the users and services
      template=$(sed "s/_user_/$user/g;s/_request_/$request/g;s/_service_/$service/g" smt_grouped_mem_template.p)
      echo "$template" >> smt_grouped_mem.p
    done
  done
done

### Generate Grouped CPU GNU
rm smt_grouped_cpu.p
touch smt_grouped_cpu.p
# For each combination of users and microservices
for user in "${users[@]}"; do
  for request in "${requests[@]}"; do
    for service in "${microservices[@]}"; do
      # Read in the template and substitute the users and services
      template=$(sed "s/_user_/$user/g;s/_request_/$request/g;s/_service_/$service/g" smt_grouped_cpu_template.p)
      echo "$template" >> smt_grouped_cpu.p
    done
  done
done
rm smts_only_cpu.p
touch smts_only_cpu.p
# For each combination of users and microservices
for user in "${users[@]}"; do
  for request in "${requests[@]}"; do
    for service in "${microservices[@]}"; do
      # Read in the template and substitute the users and services
      template=$(sed "s/_user_/$user/g;s/_request_/$request/g;s/_service_/$service/g" smts_only_cpu_template.p)
      echo "$template" >> smts_only_cpu.p
    done
  done
done


rm smt_proxy_mem.p
touch smt_proxy_mem.p
# For each combination of users and microservices
for user in "${users[@]}"; do
  for request in "${requests[@]}"; do
    for service in "${microservices[@]}"; do
      # Read in the template and substitute the users and services
      template=$(sed "s/_user_/$user/g;s/_request_/$request/g;s/_service_/$service/g" smt_proxy_mem_template.p)
      echo "$template" >> smt_proxy_mem.p
    done
  done
done

### Generate CPU GNU
rm smt_cpu.p
touch smt_cpu.p
# For every user
for user in "${users[@]}"; do
  template=$(sed "s/_user_/$user/g" smt_cpu_template.p)
  # Append the output to the smt_cpu.p file
  echo "$template" >> smt_cpu.p
done

### Generate Istio Linkerd and Kubernetes Diff User/Service Latency GNU
rm kubernetes/latency_services.p
touch kubernetes/latency_services.p
for service in "${microservices[@]}"; do
  for request in "${requests[@]}"; do
    template=$(sed "s/_service_/$service/g;s/_request_/$request/g" kubernetes/latency_services_template.p)
    echo "$template" >> kubernetes/latency_services.p
  done
done
rm kubernetes/latency_users.p
touch kubernetes/latency_users.p
for user in "${users[@]}"; do
  for request in "${requests[@]}"; do
    template=$(sed "s/_user_/$user/g;s/_request_/$request/g" kubernetes/latency_users_template.p)
    echo "$template" >> kubernetes/latency_users.p
  done
done
rm linkerd/latency_services.p
touch linkerd/latency_services.p
for service in "${microservices[@]}"; do
  for request in "${requests[@]}"; do
    template=$(sed "s/_service_/$service/g;s/_request_/$request/g" linkerd/latency_services_template.p)
    echo "$template" >> linkerd/latency_services.p
  done
done
rm linkerd/latency_users.p
touch linkerd/latency_users.p
for user in "${users[@]}"; do
  for request in "${requests[@]}"; do
    template=$(sed "s/_user_/$user/g;s/_request_/$request/g" linkerd/latency_users_template.p)
    echo "$template" >> linkerd/latency_users.p
  done
done
rm istio/latency_services.p
touch istio/latency_services.p
for service in "${microservices[@]}"; do
  for request in "${requests[@]}"; do
    template=$(sed "s/_service_/$service/g;s/_request_/$request/g" istio/latency_services_template.p)
    echo "$template" >> istio/latency_services.p
  done
done
rm istio/latency_users.p
touch istio/latency_users.p
for user in "${users[@]}"; do
  for request in "${requests[@]}"; do
    template=$(sed "s/_user_/$user/g;s/_request_/$request/g" istio/latency_users_template.p)
    echo "$template" >> istio/latency_users.p
  done
done