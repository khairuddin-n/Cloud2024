from flask import Flask, jsonify

app = Flask(__name__)

users = [
    {"id": 1, "name": "User A"},
    {"id": 2, "name": "User B"},
    {"id": 3, "name": "User C"}
]

@app.route('/', methods=['GET'])
def home():
    return "User Service is running!"

@app.route('/users', methods=['GET'])
def get_users():
    return jsonify(users)

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5003)
