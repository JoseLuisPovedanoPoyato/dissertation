from flask import Flask, request, send_file
from flask_restful import Resource, Api, reqparse, abort, marshal, fields
import json
import shutil
import pathlib
import subprocess

def run_apache_request(user, request, service, post_file, results_dir):
    csv_file = f"{results_dir}/csv_{user}_{request}_{service}"
    app.logger.info(f"csv_file = {csv_file}")
    gnu_file = f"{results_dir}/gnu_{user}_{request}_{service}"
    app.logger.info(f"gnu_file = {gnu_file}")
    process = subprocess.run(['ab', '-p', post_file, '-T', 'application/json', '-c', str(user), '-n', str(request * user), '-e', csv_file, '-g', gnu_file, '-v', '1', '-s', '120', 'http://micro-counter-service/count'], capture_output=True, text=True)
    logs, errors = process.stdout, process.stderr
    print(logs, flush=True)
    if errors:
        print(errors, flush=True)

# Initialize Flask
app = Flask(__name__)
api = Api(app)

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

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000, debug=True)