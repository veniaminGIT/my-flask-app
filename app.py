from flask import Flask, jsonify
import datetime

app = Flask(__name__)

@app.route('/')
def home():
    return jsonify({
        "message": "Bine ai venit la aplicația mea Docker!",
        "timestamp": datetime.datetime.now().isoformat(),
        "version": "1.0.8"
    })

@app.route('/health')
def health():
    return jsonify({"status": "healthy"}), 200

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5001, debug=False)
