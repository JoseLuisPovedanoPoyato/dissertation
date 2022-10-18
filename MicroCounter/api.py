from urllib import request
from flask import Flask
from flask_restful import Resource, Api, reqparse, abort, marshal, fields
import requests

# Initialize Flask
app = Flask(__name__)
api = Api(app)

MICRO_COUNTER_URL = "http://127.0.0.1:8000"
COUNT_URL = "/count"
next_url = MICRO_COUNTER_URL + COUNT_URL

@app.route('/home', methods=['POST', 'GET'])
def home():
    return "I am the micro counter, when reached at my /$URL I will reduce the data counter by 1 and ping the next microservice. Once the counter reaches zero, the microcounter that reduces it to 0 will return a notification."

@app.route('/count', methods=['POST', 'GET'])
def send_data():
    data = {}
    if request:
        data = request.get_json() 
    count = data.get('count')
    data = {'count' : count}
    requests.post(url = next_url, json = data)
    # Return request response OR return end value
    return "Sent data to..." + next_url

# Need to figure out a way to figure out all other deployments urls (These are variable)
    # E.G. Request includes current number and max count? 
        # Instead of decreasing we increase counter until it reaches max count, then return it?
        # Current number is added to the deployments on a DNS so they match the deployment we want to send next
            #E.G. MicroCounter-1 -> {2, 3} -> MicroCounter-2 -> {3, 3} -> MicroCounter-3 -> {"We finished!"}

# Create next URL
def figure_out_next_url(counter):
    return MICRO_COUNTER_URL + '_' + str(counter + 1) + '_' + COUNT_URL


if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000, debug=True)