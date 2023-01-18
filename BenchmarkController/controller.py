from flask import Flask, request
from flask_restful import Resource, Api, reqparse, abort, marshal, fields
import json
import requests

### Default Values for unspecified benchmark runs ###
# We simulate 1, 5, 10, (and maybe 100 and 1000) users sending simultaneous requests
# Each user will try to send 1, 2, 4, 8 and 16 requests each
CONCURRENT_USERS=[1, 5, 10]
REQUESTS_PER_USER = [1, 2, 4, 8, 16]
SERVICES_PER_REQ = [10, 50, 100, 500, 1000]

REQUEST_GENERATOR_URL = "http://request-generator-service"

# Initialize Flask
app = Flask(__name__)
api = Api(app)

@app.route('/home', methods=['POST', 'GET'])
def home():
    return "I am the benchmark controller, \n I tell the load generator when to start sending requests, \n the format those requests should take, and collect its latency metrics for each service mesh."

@app.route('/send_requests', methods=['POST', 'GET'])
def send_requests():
    data = {}
    # data = {'smt': 'Name of service mesh to benchmark', 'users': '[Number of concurrent users pinging app]', 'requests': '[Number of requests each user should send]', 'services':'[Number of MicroServices we should simulate]'}
    try:
        data = request.get_json()
        print(data)
    except:
        app.logger.error(f"Request Data could not be accessed, using default specification instead.")
    smt = data.get("smt", "kubernetes")
    users = data.get("users", CONCURRENT_USERS)
    requests = data.get("requests", REQUESTS_PER_USER)
    services = data.get("services", SERVICES_PER_REQ)
    
    load_gen_data = {"users" : users, "requests" : requests, "services" : services}
    app.logger.info(f"Data to generate requests: \n\n Concurrent Users = {load_gen_data["users"]} \n Requests per User = {load_gen_data["requests"]} \n MicroServices Per Request = {load_gen_data["services"]}")
    
    # Execute load generator
    resp = requests.post(url = REQUEST_GENERATOR_URL, json = load_gen_data)
    smt_results = {resp.content}
    print(smt_results)
    
    app.logger.info("Collected results from load generator, storing those results...")
    
    try:
        with open('benchmark_latency_results.json', "r") as file:
            results = json.load(file)
    except Exception as e:
        app.logger.info("No previous benchmark run was found...")
        print(e)
        results = {}
    
    if results.get(smt) != None:
        app.logger.warning(f"The benchmark has already been run for {smt}. This current execution has overwritten those results.")    
    results[smt] = smt_results
    
    with open('benchmark_latency_results.json', "w") as file:
        json.dump(tot_results, file)
        app.logger.info(f"The results have been written to the file 'benchmark_latency_results.json'")
    return results

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000, debug=True)