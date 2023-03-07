from flask import Flask, request, send_file
from flask_restful import Api
import requests as requests_lib
import json
import shutil
import pathlib
import subprocess
import time

# Initialize Flask
app = Flask(__name__)
api = Api(app)

micro_counter_url = 'http://micro-counter-service-a/count'
prometheus_query_url = 'http://prometheus:9090/api/v1/query'
prom_scrape = 2

def run_apache_request(user, request, service, post_file, results_dir):
    files = {'csv_file':f"{results_dir}/csv_{user}_{request}_{service}", 'gnu_file':f"{results_dir}/gnu_{user}_{request}_{service}",
              'memory_file':f"{results_dir}/memory_{user}_{request}_{service}", 'cpu_file':f"{results_dir}/cpu_{user}", 
              'grouped_cpu_file':f"{results_dir}/grouped_cpu_file_{user}_{request}_{service}",
              'mem_data_plane_by_proxy_file':f"{results_dir}/mem_data_plane_by_proxy_{user}_{request}_{service}", 
              'grouped_mem_file':f"{results_dir}/grouped_mem_file_{user}_{request}_{service}",
              'smts_only_cpu_file':f"{results_dir}/smts_only_cpu_file_{user}_{request}_{service}",
            }
    log_files(files)
    start = time.time()
    process = subprocess.run(['ab', '-p', post_file, '-T', 'application/json', '-c', str(user), '-n', str(request * user), '-e', files['csv_file'], '-g', files['gnu_file'], '-v', '1', '-s', '300', micro_counter_url], capture_output=True, text=True)
    try:
        gather_resource_metrics(start, files, service)
    except Exception as e:
        app.logger.info("Could not gather resource metrics...")
        print(e, flush = True)
    logs, errors = process.stdout, process.stderr
    print(logs, flush=True)
    if errors:
        print(errors, flush=True)

@app.route('/home', methods=['POST', 'GET'])
def home():
    return "I am the load generator. I use apache ab to send multiple requests to the micro-counter simulating a different number of concurrent users, requests per user, and micro-services to be pinged per request. \n"

@app.route('/generate_load', methods=['POST', 'GET'])
def generate_load():
    data = {}
    try:
        data = request.get_json()
        app.logger.info(f"Provided data: {data}")
        users = data["users"]
        requests = data["requests"]
        services = data["services"]
    except:
        app.logger.error("Invalid data provided to load generator. Usage: \n\n data = {'users': '[Number of concurrent users pinging app]', 'requests': '[Number of requests each user should send]', 'services':'[Number of MicroServices we should simulate]'}")
        app.logger.error(f"Provided data: {str(data)}")
        return "Invalid data provided to load generator. Usage: \n\n data = {'users': '[Number of concurrent users pinging app]', 'requests': '[Number of requests each user should send]', 'services':'[Number of MicroServices we should simulate]'}", 400

    # Creating service files for apache ab to use as part of the POST request. The other option is to echo the json in through command line (messier).
    app.logger.info("Creating POST json files for apache ab, the files contain the number of microservices to use...")
    service_files = []
    for i in range(len(services)):
        with open(f"service_files_{i}.json", "w") as f:
            json.dump({"count" : 0, "max_count" : services[i]}, f)
            service_files.append(f"service_files_{i}.json")
    
    results_dir = pathlib.Path(f'./results/')
    results_dir.mkdir(parents=True, exist_ok=True)
    app.logger.info(results_dir)
    total_apache_execs = len(users) * len(requests) * len(services)
    count = 1
    for user in users:
        for req in requests:
            for i in range(len(services)):
                time.sleep(prom_scrape) # This way we ensure we accidentally not include measurements from previous execution
                app.logger.info(f"Executing apache ab load... ({count}/{total_apache_execs})")
                run_apache_request(user, req, services[i], service_files[i], results_dir)
                count += 1    
    app.logger.info("Collected latency for all of the apache ab requests...")
    
    app.logger.info("Storing results as a zip file...")
    results = shutil.make_archive("results.zip", 'zip', results_dir)
    app.logger.info(f"Created file {str(results)}...")

    app.logger.info("Returning results to benchmark controller...")
    return send_file(results)

def gather_resource_metrics(start, files, service):
    len_t = time.time() - start
    t = max(prom_scrape, int(len_t))
    
    resp_cpu_usage = None
    param_cpu_usage = f'sum(rate(node_cpu_seconds_total[{t}s])) - sum by (cpu) (rate(node_cpu_seconds_total{{mode="idle"}}[{t}s]))'
    resp_cpu_usage = requests_lib.post(prometheus_query_url, headers = {'Content-Type': 'application/x-www-form-urlencoded'}, data = {'query': param_cpu_usage})

    #Collect Memory from Node Exporter
    param_mem_tot = f"node_memory_MemTotal_bytes[{max(prom_scrape, int(time.time() - start))}s]"
    resp_mem_tot = requests_lib.post(prometheus_query_url, headers = {'Content-Type': 'application/x-www-form-urlencoded'}, data = {'query': param_mem_tot})
    param_mem_available = f"node_memory_MemAvailable_bytes[{max(prom_scrape, int(time.time() - start))}s]"
    resp_mem_available = requests_lib.post(prometheus_query_url, headers = {'Content-Type': 'application/x-www-form-urlencoded'}, data = {'query': param_mem_available})

    #Collect CPU Usage from Cadvsior
    # Data Plane
    param_smt_data_cpu_usage = f'(sum(rate(container_cpu_usage_seconds_total{{container_label_io_kubernetes_container_name=~"(linkerd|istio)-proxy"}}[{t}s]))/ sum (machine_cpu_cores)) * {len_t}'
    resp_smt_data_cpu_usage = requests_lib.post(prometheus_query_url, headers = {'Content-Type': 'application/x-www-form-urlencoded'}, data = {'query': param_smt_data_cpu_usage})
    # Control Plane
    param_smt_control_cpu_usage = f'(sum(rate (container_cpu_usage_seconds_total{{container_label_io_kubernetes_pod_namespace=~"(linkerd|istio-system)"}}[{t}s])) / sum (machine_cpu_cores)) * {len_t}'
    resp_smt_control_cpu_usage = requests_lib.post(prometheus_query_url, headers = {'Content-Type': 'application/x-www-form-urlencoded'}, data = {'query': param_smt_control_cpu_usage})
    #MicroCounter
    param_cpu_counter_app = f'(sum(rate (container_cpu_usage_seconds_total{{container_label_io_kubernetes_container_name=~"micro-counter"}}[{t}s])) / sum (machine_cpu_cores)) * {len_t}'
    resp_cpu_counter_app = requests_lib.post(prometheus_query_url, headers = {'Content-Type': 'application/x-www-form-urlencoded'}, data = {'query': param_cpu_counter_app})
    #RequestGenerator
    param_cpu_req_gen_app = f'(sum(rate (container_cpu_usage_seconds_total{{container_label_io_kubernetes_container_name=~"request-generator"}}[{t}s])) / sum (machine_cpu_cores)) * {len_t}'
    resp_cpu_req_gen_app = requests_lib.post(prometheus_query_url, headers = {'Content-Type': 'application/x-www-form-urlencoded'}, data = {'query': param_cpu_req_gen_app})
    #BenchmarkController
    param_cpu_benchmark_controller_app = f'(sum(rate (container_cpu_usage_seconds_total{{container_label_io_kubernetes_container_name=~"benchmark-controller"}}[{t}s])) / sum (machine_cpu_cores)) * {len_t}'
    resp_cpu_benchmark_controller_app = requests_lib.post(prometheus_query_url, headers = {'Content-Type': 'application/x-www-form-urlencoded'}, data = {'query': param_cpu_benchmark_controller_app})
    #Monitoring Systems
    param_cpu_monitoring_apps = f'(sum(rate (container_cpu_usage_seconds_total{{container_label_io_kubernetes_pod_namespace=~"(cadvisor|monitoring)"}}[{t}s])) / sum (machine_cpu_cores)) * {len_t}'
    resp_cpu_monitoring_apps = requests_lib.post(prometheus_query_url, headers = {'Content-Type': 'application/x-www-form-urlencoded'}, data = {'query': param_cpu_monitoring_apps})
    
    #Collect Memory from Cadvisor
    # Control Plane
    param_mem_control_tot = f'sum(avg(avg_over_time(container_memory_usage_bytes{{container_label_io_kubernetes_pod_namespace=~"(linkerd|istio-system)"}}[{max(prom_scrape, int(time.time() - start))}s])) by (container_label_io_kubernetes_pod_name, container_label_io_kubernetes_container_name))'
    resp_mem_control_tot = requests_lib.post(prometheus_query_url, headers = {'Content-Type': 'application/x-www-form-urlencoded'}, data = {'query': param_mem_control_tot})
    # Data Plane
    param_mem_data_tot = f'sum(avg(avg_over_time(container_memory_usage_bytes{{container_label_io_kubernetes_container_name=~"(linkerd|istio)-proxy"}}[{max(prom_scrape, int(time.time() - start))}s])) by (container_label_io_kubernetes_pod_name, container_label_io_kubernetes_container_name))'
    resp_mem_data_tot = requests_lib.post(prometheus_query_url, headers = {'Content-Type': 'application/x-www-form-urlencoded'}, data = {'query': param_mem_data_tot})
    # Data Plane memory per proxy
    param_mem_data_by_proxy = f'avg(avg_over_time(container_memory_usage_bytes{{container_label_io_kubernetes_container_name=~"(linkerd|istio)-proxy"}}[{max(prom_scrape, int(time.time() - start))}s])) by (container_label_io_kubernetes_pod_name, container_label_io_kubernetes_container_name)'
    resp_mem_data_by_proxy = requests_lib.post(prometheus_query_url, headers = {'Content-Type': 'application/x-www-form-urlencoded'}, data = {'query': param_mem_data_by_proxy})
    #MicroCounter
    param_mem_counter_app = f'sum(avg(avg_over_time(container_memory_usage_bytes{{container_label_io_kubernetes_container_name=~"micro-counter"}}[{max(prom_scrape, int(time.time() - start))}s])) by (container_label_io_kubernetes_pod_name, container_label_io_kubernetes_container_name))'
    resp_mem_counter_app = requests_lib.post(prometheus_query_url, headers = {'Content-Type': 'application/x-www-form-urlencoded'}, data = {'query': param_mem_counter_app})
    #RequestGenerator
    param_mem_req_gen_app = f'sum(avg(avg_over_time(container_memory_usage_bytes{{container_label_io_kubernetes_container_name=~"request-generator"}}[{max(prom_scrape, int(time.time() - start))}s])) by (container_label_io_kubernetes_pod_name, container_label_io_kubernetes_container_name))'
    resp_mem_req_gen_app = requests_lib.post(prometheus_query_url, headers = {'Content-Type': 'application/x-www-form-urlencoded'}, data = {'query': param_mem_req_gen_app})
    #BenchmarkController
    param_mem_benchmark_controller_app = f'sum(avg(avg_over_time(container_memory_usage_bytes{{container_label_io_kubernetes_container_name=~"benchmark-controller"}}[{max(prom_scrape, int(time.time() - start))}s])) by (container_label_io_kubernetes_pod_name, container_label_io_kubernetes_container_name))'
    resp_mem_benchmark_controller_app = requests_lib.post(prometheus_query_url, headers = {'Content-Type': 'application/x-www-form-urlencoded'}, data = {'query': param_mem_benchmark_controller_app})
    #Monitoring Systems
    param_mem_monitoring_apps = f'sum(avg(avg_over_time(container_memory_usage_bytes{{container_label_io_kubernetes_pod_namespace=~"(cadvisor|monitoring)"}}[{max(prom_scrape, int(time.time() - start))}s])) by (container_label_io_kubernetes_pod_name, container_label_io_kubernetes_container_name))'
    resp_mem_monitoring_apps = requests_lib.post(prometheus_query_url, headers = {'Content-Type': 'application/x-www-form-urlencoded'}, data = {'query': param_mem_monitoring_apps})


    if resp_mem_tot.status_code == 200 and resp_mem_available.status_code == 200:
        mem_tot = resp_mem_tot.json()['data']['result'][0]['values']
        mem_free = resp_mem_available.json()['data']['result'][0]['values']
        mem_used = [(free[0], float(tot[1])-float(free[1])) for free in mem_free for tot in mem_tot if tot[0] == free[0]]

        base_time = mem_used[0][0]
        with open(files['memory_file'], "w") as f:
            for metric in mem_used:
                f.writelines(f"{float(metric[0])-float(base_time)},{metric[1]}\n")
        app.logger.info("Recorded Node Memory Usage.")

    """
    if resp_cpu_usage.status_code == 200:
        cpu_usage = resp_cpu_usage.json()['data']['result'][0]['value']
        with open(files['cpu_file'], "a") as f:
            f.writelines(f"{service},{cpu_usage[1]}\n")
    """
            
    # CPU Collection
    if resp_cpu_counter_app.status_code == 200:
        record_single_value_metric(resp_cpu_counter_app, files['grouped_cpu_file'], "Micro-Counter", "Recorded MicroCounter Application CPU Usage.", f"Scraping for Micro Counter CPU Usage over the last {t} seconds was blank.")
    if resp_cpu_req_gen_app.status_code == 200:
        record_single_value_metric(resp_cpu_req_gen_app, files['grouped_cpu_file'], "Request Generator", "Recorded Request Generator Application CPU Usage.", f"Scraping for Request Generator CPU Usage over the last {t} seconds was blank.")
    if resp_cpu_benchmark_controller_app.status_code == 200:
        record_single_value_metric(resp_cpu_benchmark_controller_app, files['grouped_cpu_file'], "Benchmark Controller", "Recorded Benchmark Controller Application CPU Usage.", f"Scraping for Benchmark Controller CPU Usage over the last {t} seconds was blank.")
    if resp_cpu_monitoring_apps.status_code == 200:
        record_single_value_metric(resp_cpu_monitoring_apps, files['grouped_cpu_file'], "Monitoring", "Recorded Monitoring Apps CPU Usage.", f"Scraping for Monitoring Apps CPU Usage over the last {t} seconds was blank.")
    if resp_smt_data_cpu_usage.status_code == 200:
        record_single_value_metric(resp_smt_data_cpu_usage, files['grouped_cpu_file'], "Data Plane", "Recorded Data Plane CPU Usage.", f"Scraping for Data Plane CPU Usage over the last {t} seconds was blank.")
        record_single_value_metric(resp_smt_data_cpu_usage, files['smts_only_cpu_file'], "Data Plane", "Recorded Data Plane CPU Usage in exclusively SMT Usage File.", f"Scraping for Data Plane CPU Usage over the last {t} seconds was blank.")
    if resp_smt_control_cpu_usage.status_code == 200:
        record_single_value_metric(resp_smt_control_cpu_usage, files['grouped_cpu_file'], "Control Plane", "Recorded Control Plane CPU Usage.", f"Scraping for Control Plane CPU Usage over the last {t} seconds was blank.")
        record_single_value_metric(resp_smt_control_cpu_usage, files['smts_only_cpu_file'], "Control Plane", "Recorded Control Plane CPU Usage in exclusively SMT Usage File.", f"Scraping for Data Plane CPU Usage over the last {t} seconds was blank.")
    

    # Memory Collection
    if resp_mem_counter_app.status_code == 200:
        record_single_value_metric(resp_mem_counter_app, files['grouped_mem_file'], "Micro-Counter", "Recorded MicroCounter Application Memory Usage.", f"Scraping for Micro Counter Memory Usage over the last {t} seconds was blank.")
    if resp_mem_req_gen_app.status_code == 200:
        record_single_value_metric(resp_mem_req_gen_app, files['grouped_mem_file'], "Request Generator", "Recorded Request Generator Application Memory Usage.", f"Scraping for Request Generator Memory Usage over the last {t} seconds was blank.")
    if resp_mem_benchmark_controller_app.status_code == 200:
        record_single_value_metric(resp_mem_benchmark_controller_app, files['grouped_mem_file'], "Benchmark Controller", "Recorded Benchmark Controller Application Memory Usage.", f"Scraping for Benchmark Controller Memory Usage over the last {t} seconds was blank.")
    if resp_mem_monitoring_apps.status_code == 200:
        record_single_value_metric(resp_mem_monitoring_apps, files['grouped_mem_file'], "Monitoring", "Recorded Monitoring Apps Memory Usage.", f"Scraping for Monitoring Apps Memory Usage over the last {t} seconds was blank.")
    if resp_mem_data_tot.status_code == 200:
        record_single_value_metric(resp_mem_data_tot, files['grouped_mem_file'], "Data Plane", "Recorded Data Plane Memory Usage.", f"Scraping for Data Plane Memory Usage over the last {t} seconds was blank.")
    if resp_mem_control_tot.status_code == 200:
        record_single_value_metric(resp_mem_control_tot, files['grouped_mem_file'], "Control Plane", "Recorded Control Plane Memory Usage.", f"Scraping for Control Plane Memory Usage over the last {t} seconds was blank.")
    
    if resp_mem_data_tot.status_code == 200:
        record_multiple_value_metric(resp_mem_data_by_proxy, files['mem_data_plane_by_proxy_file'], "Recorded Data Plane Memory usage by proxy.", f"Scraping for Data Plane Memory Usage over the last {t} seconds was blank.")
    

    """
    if resp_cpu_usage.status_code == 200:
        cpu_usage_detailed = resp_cpu_usage.json()['data']['result']
        
        # Collect the CPU Usage values flattening them into a 1d list
        cpu_total_values = []
        cpu_used_values = []
        for result in cpu_usage_detailed:
            if type(result["values"][0]) == list:
                for res in result["values"]:
                    cpu_total_values.append(res)
                    if result["metric"]["mode"] != "idle":
                        cpu_used_values.append(res)
            else:
                cpu_total_values.append(result["values"])
                if result["metric"]["mode"] != "idle":
                    cpu_used_values.append(result["values"])
        
        # Group the usage accross processors into the same list
        tot_cpu_grouped = group_2d_list_by_repeated_first_element(cpu_total_values)
        not_idle_cpu_grouped = group_2d_list_by_repeated_first_element(cpu_used_values)

        print(not_idle_cpu_grouped, flush = True)
        print(tot_cpu_grouped, flush = True)

        cpu_percentage = [(tot[0], 100 * float(used[1])/float(tot[1])) for used in not_idle_cpu_grouped for tot in tot_cpu_grouped if tot[0] == used[0]]

        with open(cpu_file, "w") as f:
            for metric in cpu_percentage:
                f.writelines(f"{metric[0]},{metric[1]}\n")
        """

def record_single_value_metric(response, file, index, succesful_message=None, failed_message=None):
    if not succesful_message:
        succesful_message = f"Succesfully recorded contents of {response} in {file}"
    if not failed_message:
        failed_message = f"Failed to record contents of {response} in {file}"
    resp_result = response.json()['data']['result']
    print(resp_result, flush=True)
    if (len(resp_result) > 0):
        metric = resp_result[0]['value']
        with open(file, "a") as f:
            f.writelines(f"{index},{metric[1]}\n")
        app.logger.info(f"{succesful_message}")
        print(metric, flush = True)
    else:
        app.logger.info(f"{failed_message}")

def record_multiple_value_metric(response, file, succesful_message=None, failed_message=None):
    if not succesful_message:
        succesful_message = f"Succesfully recorded contents of {response} in {file}"
    if not failed_message:
        failed_message = f"Failed to record contents of {response} in {file}"
    resp_result = response.json()['data']['result']
    if (len(resp_result) > 0):
        for metric in resp_result: 
            with open(file, "a") as f:
                f.writelines(f"{metric['metric']['container_label_io_kubernetes_pod_name']}, {metric['value'][1]}\n")
        app.logger.info(f"{succesful_message}")
        print(['value'], flush = True)
    else:
        app.logger.info(f"{failed_message}")

def group_2d_list_by_repeated_first_element(list_2d):
    d = {l[0]: 0 for l in list_2d}
    for l in list_2d:
        d[l[0]] = d[l[0]] + float(l[1])
    return list(map(tuple, d.items()))

def log_files(files):
    for file in files:
        app.logger.info(f"{file} = {files[file]}")

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000, debug=True)