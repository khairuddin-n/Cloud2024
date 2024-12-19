from flask import Flask, jsonify

app = Flask(__name__)

users = [
    {"user_id": 1, "name": "Alice"},
    {"user_id": 2, "name": "Bob"}
]

@app.route('/users', methods=['GET'])
def get_users():
    return jsonify(users)

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5003)
