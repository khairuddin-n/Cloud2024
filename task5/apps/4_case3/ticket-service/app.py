from flask import Flask, jsonify

app = Flask(__name__)

tickets = [
    {"id": 1, "movie_id": 1, "user_id": 1, "status": "booked"},
    {"id": 2, "movie_id": 2, "user_id": 2, "status": "available"}
]

@app.route('/', methods=['GET'])
def home():
    return "Ticket Service is running!"

@app.route('/order_ticket', methods=['GET'])
def get_tickets():
    return jsonify(tickets)

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5001)
