from flask import Flask
import socket
app = Flask(__name__)

@app.route('/')
def main():
    return f"<h1>Flask</h1> <p>{socket.gethostname()}</p>"

if __name__ == '__main__':
    app.run(host="0.0.0.0", port=5000, debug=True)