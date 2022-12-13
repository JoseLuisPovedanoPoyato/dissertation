import subprocess
from pathlib import Path
import re

# Get requests
file_path = Path.cwd()
requests = [str(f) for f in list(file_path.glob('**/*.json'))]

print(requests)

results = {}

# Read request data and execute them
for i in range(len(requests)):
    req_path = requests[i]
    process = subprocess.run(['ab', '-p', req_path, '-T', 'application/json', '-c', '1', '-n', '10', '-v', '4', 'http://micro-counter-service/count'], capture_output=True, text=True)
    print(process)
    logs = process.stdout

    result = re.search('Time per request:(.*)\n', logs)
    print(result)
    print(result.group(1))
    results[i] = ["", ""]