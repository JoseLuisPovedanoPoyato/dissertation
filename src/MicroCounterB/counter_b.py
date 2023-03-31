import logging
from flask import Flask, request
from flask_restful import Api
import requests

# Initialize Flask
app = Flask(__name__)
api = Api(app)

MICRO_COUNTER_URL = "http://micro-counter-service-a"
# MICRO_COUNTER_URL = "http://127.0.0.1:5000"
COUNT_URL = "/count"

@app.route('/home', methods=['POST', 'GET'])
def home():
    return "I am the micro counter, when reached at my /$URL I will reduce the data counter by 1 and ping the next microservice. Once the counter reaches zero, the microcounter that reduces it to 0 will return a notification."

@app.route('/count', methods=['POST', 'GET'])
def count():
    data = {}
    try:
        data = request.get_json()
    except:
        app.logger.error("Could not get data from request")
        pass 
    count, max_count = data.get('count', 0), data.get('max_count', 1)
    app.logger.info(f"I was pinged with count {count}")
    count = count + 1
    if count == max_count:
        return str(max_count)
    else:
        data = {'count' : count, 'max_count' : max_count}
        next_url = get_url()
        resp = requests.post(url = next_url, json = data)
        attempts = 0
        while resp.status_code != 200 and attempts < 10:
            attempts = attempts + 1
            app.logger.info(resp)
            app.logger.error(f"There was an error... Retrying request... Status Code = {resp.status_code}")
            resp = requests.post(url = next_url, json = data)
            if attempts >= 10:
                print("Tried resubmitting request 10 times, moving on...")
        return resp.content

def get_url():
    return MICRO_COUNTER_URL + COUNT_URL



if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000, debug=True, threaded=True)