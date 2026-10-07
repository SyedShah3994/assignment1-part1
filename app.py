from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    print("Home page requested", flush=True)
    return "Hello from Docker! Assignment 1 - Syed Muhamamad Moin Ali Shah"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)