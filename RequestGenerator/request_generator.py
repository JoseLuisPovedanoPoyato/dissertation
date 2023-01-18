from flask import Flask, request
from flask_restful import Resource, Api, reqparse, abort, marshal, fields
import json
import re

def run_apache_request(data):
    process = subprocess.run(['ab', '-p', req_path, '-T', 'application/json', '-c', str(concurrency), '-n', str(num), '-v', '1', '-s', '90', 'http://micro-counter-service/count'], capture_output=True, text=True)
    logs, errors = process.stdout, process.stderr
    print(logs)
    if errors:
        print(errors)
    result = re.findall('Time per request:(.*)\n', logs)
    
    if len(result)>0:
        for i in range(len(result)):
            result[i] = result[i].strip()
    return result

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
        requests = data.get["requests"]
        services = data.get["services"]
    except:
        app.logger.error("Invalid data provided to load generator. Usage: \n\n data = {'users': '[Number of concurrent users pinging app]', 'requests': '[Number of requests each user should send]', 'services':'[Number of MicroServices we should simulate]'}")
        return "Invalid data provided to load generator. Usage: \n\n data = {'users': '[Number of concurrent users pinging app]', 'requests': '[Number of requests each user should send]', 'services':'[Number of MicroServices we should simulate]'}", 400

    # Creating service files for apache ab to use as part of the POST request. The other option is to echo the json in through command line (messier).
    app.logger.info("Creating POST json files for apache ab, the files contain the number of microservices to use...")
    service_files = []
    for i in range(len(services)):
        with open(f"service_files_{i}.json", "w") as f:
            f.dump({"count" : 0, "max_count" : services[i]})
            service_files.append(f"service_files_{i}.json")
    
    results = {}
    total_apache_execs = len(users) * len(requests) * len(services)
    count = 1
    for user in users:
        results[user] = {}
        for req in requests:
            results[user][req] = {}
            for i in range(len(services)):
                app.logger.info(f"Executing apache ab load... ({count}/{total_apache_execs})")
                results[user][req][services[i]] = run_apache_request(user, req, service_files[i])
                count += 1
    
    app.logger.info("Collected latency for all of the apache ab requests...")
    app.logger.info("Returning results to benchmark controller")
    
    return results

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000, debug=True)