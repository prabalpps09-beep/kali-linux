from flask import Flask, request, redirect

app = Flask(__name__)

@app.route('/')
def get_ip_and_redirect():
    visitor_ip = request.remote_addr
    print(f"Visitor IP: {visitor_ip}")
    return redirect("https://www.youtube.com", code=302)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
