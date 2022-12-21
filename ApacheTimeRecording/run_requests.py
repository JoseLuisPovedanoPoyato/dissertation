import subprocess
from pathlib import Path
import re
import json

CONCURRENT_REQUESTS=[1, 10, 100, 1000, 10000]
NUM_OF_REQUESTS=[value * 10 for value in CONCURRENT_REQUESTS]

def get_requests():
    file_path = Path.cwd()
    requests = [str(f) for f in list(file_path.glob('**/*.json'))]
    return requests

def send_requests(smt):
    requests = get_requests()

    # Format {'SMT': {'ConcurrentRequests' : {'NumOfRequests' : {'NumOfMicroServices' : ["Array containing values we want"] } } } }
    results = {}

    # Get SMT (Idea: We have a flask app that receives it once everything is ready, sets it as an env variable and calls this)
    if smt is None:
        smt = "kubernetes"

    # Read request data and execute them
    for concurrency in CONCURRENT_REQUESTS:
        for num in NUM_OF_REQUESTS:
            for i in range(len(requests)):
                req_path = requests[i]
                process = subprocess.run(['ab', '-p', req_path, '-T', 'application/json', '-c', concurrency, '-n', num, '-v', '1', 'http://micro-counter-service/count'], capture_output=True, text=True)
                logs = process.stdout
                print(logs)

                result = re.findall('Time per request:(.*)\n', logs)
                print(result)

                if len(result)>0:
                    for i in range(len(result)):
                        print(result.group(i))

                max_count = json.load(req_path)['max_count']
                results[smt][concurrency][num][max_count] = [result]

    print(results)
    return results

if __name__ == "__main__":
    send_requests()