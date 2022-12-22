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
    smt = data.get('smt', smt)
    new_results = run_requests.send_requests(smt)

    try:
        old_results = json.load('benchmark_latency_results.json')
    except:
        old_results = {}
    tot_results = {key: value for (key, value) in (old_results.items() + new_results.items())}

    with open('benchmark_latency_results.json', "w") as file:
        json.dump(tot_results, file)
    return tot_results


if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000, debug=True)