import http.server
import socketserver
import webbrowser
import os

PORT = 8000
DIRECTORY = os.path.dirname(os.path.abspath(__file__))

class Handler(http.server.SimpleHTTPRequestHandler):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, directory=DIRECTORY, **kwargs)

print(f"==================================================")
print(f" CraftPulse Hack Build'26 Pitch & Video Studio")
print(f" Opening http://localhost:{PORT}/pitch_video.html")
print(f"==================================================")

webbrowser.open(f"http://localhost:{PORT}/pitch_video.html")

with socketserver.TCPServer(("", PORT), Handler) as httpd:
    try:
        httpd.serve_forever()
    except KeyboardInterrupt:
        print("\nStudio server stopped.")
