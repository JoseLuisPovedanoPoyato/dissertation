from flask import Flask, request
from flask_restful import Resource, Api, reqparse, abort, marshal, fields
import run_requests
import json

# Initialize Flask
app = Flask(__name__)
api = Api(app)

@app.route('/home', methods=['POST', 'GET'])
def home():
    return "I am the controller, \n I tell the request generator when to start sending requests \n Collect latency metrics from apache and resource metrics from Prometheus."

@app.route('/send_requests', methods=['POST', 'GET'])
def send_requests():
    smt = 'kubernetes'
    data = {}
    try:
        data = request.get_json()
    except:
        pass
    print(data)
    smt = data.get("smt", smt)
    new_results = run_requests.send_requests()
    try:
        with open('benchmark_latency_results.json', "r") as file:
            tot_results = json.load(file)
    except:
        tot_results = {}
        print("No previous data found")
    
    tot_results[smt] = new_results
    print(tot_results)

    with open('benchmark_latency_results.json', "w") as file:
        json.dump(tot_results, file)
    return tot_results


if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000, debug=True)