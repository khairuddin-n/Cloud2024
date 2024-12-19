from flask import Flask, jsonify, request

app = Flask(__name__)

@app.route('/order_ticket', methods=['POST'])
def order_ticket():
    data = request.get_json()
    return jsonify({"message": f"Ticket for movie {data['movie']} booked for user {data['user_id']}"}), 201

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5001)
