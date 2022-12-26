from flask import Flask, request
from flask_restful import Resource, Api, reqparse, abort, marshal, fields

# Initialize Flask
app = Flask(__name__)
api = Api(app)


# A List of Dicts to send from 1 micro to another
books = []


@app.route('/home', methods=['POST', 'GET'])
def home():
    if len(books)>0:
        return "I am happy because I have books!" + str(books)
    else:
        return "I am sad because I do not have any books"

@app.route('/receive_data', methods=['POST', 'GET'])
def receive_data():
    data = request.get_json()
    for book in data['books']:
        books.append(book)
    return "Added_data to books"

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=8000, debug=True)