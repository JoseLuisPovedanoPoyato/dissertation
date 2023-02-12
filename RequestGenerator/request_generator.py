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

micro_counter_url = 'http://micro-counter-service/count'
prometheus_query_url = 'http://prometheus:9090/api/v1/query'
prom_scrape = 1000

def run_apache_request(user, request, service, post_file, results_dir):
    csv_file = f"{results_dir}/csv_{user}_{request}_{service}"
    gnu_file = f"{results_dir}/gnu_{user}_{request}_{service}"
    memory_file = f"{results_dir}/memory_{user}_{request}_{service}"
    cpu_file = f"{results_dir}/cpu_{user}"
    log_files(csv_file, gnu_file, memory_file, cpu_file)
    start = time.time()
    process = subprocess.run(['ab', '-p', post_file, '-T', 'application/json', '-c', str(user), '-n', str(request * user), '-e', csv_file, '-g', gnu_file, '-v', '1', '-s', '300', micro_counter_url], capture_output=True, text=True)
    try:
        gather_resource_metrics(start, memory_file, cpu_file, service)
    except Exception as e:
        app.logger.info("Could not gather resource metrics...")
        print(e.message, flush = True) 
        print(e.args, flush = True)
        pass
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
                app.logger.info(f"Executing apache ab load... ({count}/{total_apache_execs})")
                run_apache_request(user, req, services[i], service_files[i], results_dir)
                count += 1    
    app.logger.info("Collected latency for all of the apache ab requests...")
    
    app.logger.info("Storing results as a zip file...")
    results = shutil.make_archive("results.zip", 'zip', results_dir)
    app.logger.info(f"Created file {str(results)}...")

    app.logger.info("Returning results to benchmark controller...")
    return send_file(results)

def gather_resource_metrics(start, memory_file, cpu_file, service):
    t = max(prom_scrape, int(time.time() - start))
    param_cpu_usage = f'100 - avg by (instance) (irate(node_cpu_seconds_total{{mode="idle"}}[{t}s])) * 100'
    resp_cpu_usage = requests_lib.post(prometheus_query_url, headers = {'Content-Type': 'application/x-www-form-urlencoded'}, data = {'query': param_cpu_usage})

    param_mem_tot = f"node_memory_MemTotal_bytes[{max(prom_scrape, int(time.time() - start))}s]"
    resp_mem_tot = requests_lib.post(prometheus_query_url, headers = {'Content-Type': 'application/x-www-form-urlencoded'}, data = {'query': param_mem_tot})
    
    param_mem_free = f"node_memory_MemFree_bytes[{max(prom_scrape, int(time.time() - start))}s]"
    resp_mem_free = requests_lib.post(prometheus_query_url, headers = {'Content-Type': 'application/x-www-form-urlencoded'}, data = {'query': param_mem_free})


    if resp_mem_tot.status_code == 200 and resp_mem_free.status_code == 200:
        mem_tot = resp_mem_tot.json()['data']['result'][0]['values']
        mem_free = resp_mem_free.json()['data']['result'][0]['values']
        mem_used = [(tot[0], float(tot[1])-float(free[1])) for free in mem_free for tot in mem_tot if tot[0] == free[0]]

        with open(memory_file, "w") as f:
            for metric in mem_used:
                f.writelines(f"{metric[0]},{metric[1]}\n")

    print(resp_cpu_usage)
    print(resp_cpu_usage.reason)
    if resp_cpu_usage.status_code == 200:
        print(resp_cpu_usage.json()['data']['result'], flush=True)
        cpu_usage = resp_cpu_usage.json()['data']['result'][0]
        print(cpu_usage, flush = True)

        with open(cpu_file, "a") as f:
            f.writelines(f"{service},{cpu_usage[1]}\n")

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

def group_2d_list_by_repeated_first_element(list_2d):
    d = {l[0]: 0 for l in list_2d}
    for l in list_2d:
        d[l[0]] = d[l[0]] + float(l[1])
    return list(map(tuple, d.items()))

def log_files(csv_file, gnu_file, memory_file, cpu_file):
    app.logger.info(f"csv_file = {csv_file}")
    app.logger.info(f"gnu_file = {gnu_file}")
    app.logger.info(f"memory_file = {memory_file}")
    app.logger.info(f"cpu_file = {cpu_file}")


if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000, debug=True)