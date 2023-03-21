from flask import Flask, request
from flask_restful import Resource, Api, reqparse, abort, marshal, fields
from datetime import datetime
import requests
import pathlib

### Default Values for unspecified benchmark runs ###
# We simulate 1, 5, 10, (and maybe 100 and 1000) users sending simultaneous requests
# Each user will try to send 1, 2, 4, 8 and 16 requests each
CONCURRENT_USERS=[100, 200, 400]
REQUESTS_PER_USER = [10] #2, 4, 8, 16
SERVICES_PER_REQ = [10, 20, 40]

REQUEST_GENERATOR_URL = "http://request-generator-service/generate_load"

# Initialize Flask
app = Flask(__name__)
api = Api(app)

@app.route('/home', methods=['POST', 'GET'])
def home():
    return "I am the benchmark controller. I tell the load generator when to start sending requests, the format those requests should take, and collect its latency metrics for each service mesh.\n"

@app.route('/send_requests', methods=['POST', 'GET'])
def send_requests():
    data = {}
    # data = {'smt': 'Name of service mesh to benchmark', 'users': '[Number of concurrent users pinging app]', 'requests': '[Number of requests each user should send]', 'services':'[Number of MicroServices we should simulate]'}
    try:
        data = request.get_json()
        print(data)
    except:
        app.logger.error(f"Request Data could not be accessed, using default specifi    cation instead.")
    smt = data.get("smt", "kubernetes")
    users = data.get("users", CONCURRENT_USERS)
    n_requests = data.get("requests", REQUESTS_PER_USER)
    services = data.get("services", SERVICES_PER_REQ)
    file_name = f"{smt}_{datetime.now().strftime('%d_%m_%y_%H_%M_%S')}.zip"
    print(file_name)
    
    load_gen_data = {"users" : users, "requests" : n_requests, "services" : services}
    app.logger.info(f"Data to generate requests: \n\n Concurrent Users = {load_gen_data.get('users')} \n Requests per User = {load_gen_data.get('requests')} \n MicroServices Per Request = {load_gen_data.get('services')}")
    
    # Execute load generator
    resp = requests.post(url = REQUEST_GENERATOR_URL, json = load_gen_data)
    print("Response:")
    print(resp, flush=True)
    print(resp.content)
    
    app.logger.info("Collected results from load generator, storing those results...")

    # We now receive a zip file containing all the relevant data we want...
    # Perhaps send a filename so generator knows what to call it instead of results?
    results_dir = pathlib.Path(f'./results/')
    results_dir.mkdir(parents=True, exist_ok=True)
    file_zip = resp.content
    with open(f"{results_dir}/{file_name}", 'wb') as f:
        f.write(file_zip)    
    app.logger.info(f"Results have been succesfully stored in file {'file_name'}")
    return f"Results have been succesfully stored in file {'file_name'}"

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000, debug=True)