"""
Simple App to test kubernetes behavior

Run on $MY_APP_HOST:$MY_APP_PORT or (127.0.0.1:5000)
"""
import os
from flask import Flask

HOST=os.getenv("MY_APP_HOST", "0.0.0.0")
PORT=os.getenv("MY_APP_PORT", "5000")

app = Flask(__name__)

@app.route("/")
def index():
    """Default entry point, say hello"""
    return "Congratulations, hello from front"

@app.route("/liveness")
def liveness():
    """Simply return an ok"""
    return {"liveness": "ok"}

if __name__ == "__main__":
    app.run(host=HOST, port=PORT)
