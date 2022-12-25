import subprocess
from pathlib import Path
import re
import json

# We simulate 1, 5, 10, 100 and 1000 users sending simultaneous requests
CONCURRENT_REQUESTS=[1, 5, 10, 100, 1000]

# Each user will try to send 1, 2, 4, 8 and 16 requests each
APACHE_CONC_NUM_COMBINATIONS = 0 
NUM_OF_REQUESTS = {}
for conc in CONCURRENT_REQUESTS:
    NUM_OF_REQUESTS[conc]=[conc, conc * 2, conc * 4, conc * 8, conc * 16]
    APACHE_CONC_NUM_COMBINATIONS += 5


def get_requests():
    file_path = Path.cwd()
    requests = [str(f) for f in list(file_path.glob('**/request_*.json'))]
    return requests

def send_requests():
    requests = get_requests()
    max_value = APACHE_CONC_NUM_COMBINATIONS * len(requests)

    # Format {'SMT': {'ConcurrentRequests' : {'NumOfRequests' : {'NumOfMicroServices' : ["Array containing values we want"] } } } }
    results = {}
    for concurrency in CONCURRENT_REQUESTS:
        results[concurrency] = {}
        for num in NUM_OF_REQUESTS[concurrency]:
            results[concurrency][num] = {}

    # Read request data and execute them
    count = 0
    for concurrency in CONCURRENT_REQUESTS:
        for num in NUM_OF_REQUESTS[concurrency]:
            for i in range(len(requests)):
                count += 1
                print(f"SENDING REQUEST:     {count}/{max_value}")
                req_path = requests[i]
                process = subprocess.run(['ab', '-p', req_path, '-T', 'application/json', '-c', str(concurrency), '-n', str(num), '-v', '1', '-s', '90', 'http://micro-counter-service/count'], capture_output=True, text=True)
                logs = process.stdout
                errors = process.stderr
                print(logs)
                if errors:
                    print(errors)

                result = re.findall('Time per request:(.*)\n', logs)
                print(result)

                if len(result)>0:
                    for i in range(len(result)):
                        print(result[i])
                        result[i] = result[i].strip()

                with open(req_path, "r") as file:
                    max_count = json.load(file)['max_count']
                results[concurrency][num][max_count] = result

    print(results)
    return results

if __name__ == "__main__":
    send_requests()