# Data Management

## How to store data after a run
This Benchmark was originally created to run in 2 different devices:
 * A server that would execute the benchmarks.
 * The student's laptop that would process the results.

To keep the records of the results please store them `data/raw`.
To process the data please copy it to `data/processed`.

## Raw Data Results
Results from runs were stored in different folders in `data/raw`.

Depending on the version of the benchmark used please navigate to `data/raw/results` or `data/raw/results_consul` as appropriate.
After you complete a run please create a new folder and store the data here.

Please note that some of the data collected is antiquated and may not reflect current results due to refinements to the architecture. The most recent runs are the most accurate.

## Processed Data Results
To process our results please navigate to `data/processed`.
`data/processed/create-graphs` is designed to analyse executions without Consul, its results are stored in `data/processed/graphs`.
`data/processed/create-graphs-consul` is designed to analyse executions that included Consul, its results are stored in `data/processed/graphs-consul`.

To generate the graphs please overwrite the linkerd.zip, istio.zip, consul.zip and kubernetes.zip in each directory `create-graphs-consul`/`create-graphs` as appropriate.

Then run `bash run_everything.sh`

This will create all the graphs in a folder in `data/processed/graphs/run_{number}` or `data/processed/graphs-consul/run_{number}`.

## Changing the graphs
To change the graphs that are generated please open `generate_gnus.sh`, `smt_boxplots.py` and `cpu_stacked_bar_chart.py` and change the number of requests, simultaneous users and microservices there.
