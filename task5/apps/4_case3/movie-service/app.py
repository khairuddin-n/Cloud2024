from flask import Flask, jsonify

app = Flask(__name__)

movies = [
    {"id": 1, "name": "Movie A", "rating": 8.0},
    {"id": 2, "name": "Movie B", "rating": 7.5},
    {"id": 3, "name": "Movie C", "rating": 9.0}
]

@app.route('/movies', methods=['GET'])
def get_movies():
    return jsonify(movies)

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5002)
