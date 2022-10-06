from urllib import request
from flask import Flask
from flask_restful import Resource, Api, reqparse, abort, marshal, fields
import requests

# Initialize Flask
app = Flask(__name__)
api = Api(app)

RECEIVE_ENDPOINT = "http://127.0.0.1:8000/receive_data"


# A List of Dicts to send from 1 micro to another
books = [{
    'id': 1,
    'title': "Zero to One",
    'author': "Peter Thiel",
    'length': 195,
    'rating': 4.17
},
    {
    'id': 2,
    'title': "Atomic Habits ",
    'author': "James Clear",
    'length': 319,
    'rating': 4.35
}]


@app.route('/home', methods=['POST', 'GET'])
def home():
    return "I will send books when you access the '/send' url"

@app.route('/send', methods=['POST', 'GET'])
def send_data():
    data = {'message' : "Hello world!", 'books' : books}
    requests.post(url = RECEIVE_ENDPOINT, json = data)
    return "Sent books data to " + RECEIVE_ENDPOINT


if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000, debug=True)