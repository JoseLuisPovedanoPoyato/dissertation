import subprocess
from pathlib import Path


# Get requests
file_path = Path.cwd()
requests = [str(f) for f in list(file_path.glob('**/*.json'))]

print(requests)

# Read request data and execute them
for req_path in requests:
    process = subprocess.run(['ab', '-p', req_path, '-T', 'application/json', '-c', '1', '-n', '10', '-v', '4', 'http://micro-counter-service/count'], capture_output=True, text=True)
    print(process)