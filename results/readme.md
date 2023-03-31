# Data Management

## How to store data after a run
This Benchmark was originally created to run in 2 different devices:
 * A server that would execute the benchmarks.
 * The student's laptop that would process the results.

To keep the records of the results please store them in `./raw`.
To generate the graphs of the data please copy it to `./processed`.

## Raw Data Results
Results from runs were stored in different folders in `./raw`.

Depending on the version of the benchmark used please navigate to `./raw/results` or `./raw/results_consul` as appropriate.
After you complete a run please create a new folder and store the data here.

Please note that some of the data collected is antiquated and may not reflect current results due to refinements to the architecture. The most recent runs are the most accurate.

## Processed Data Results
To process our results please navigate to `./processed`.
`./processed/create-graphs` is designed to analyse executions without Consul, its results are stored in `./processed/graphs`.
`./processed/create-graphs-consul` is designed to analyse executions that included Consul, its results are stored in `./processed/graphs-consul`.

To generate the graphs please overwrite the linkerd.zip, istio.zip, consul.zip and kubernetes.zip in each directory `create-graphs-consul`/`create-graphs` as appropriate.

Then run `bash run_everything.sh`

This will create all the graphs in a folder in `./processed/graphs/run_{number}` or `./processed/graphs-consul/run_{number}`.

## Changing the graphs
If you need to change the parameters of the graphs that are generated, perhaps because you did a custom run, you must change the number of requests, simultaneous users and microservices in `generate_gnus.sh`, `smt_boxplots.py` and `cpu_stacked_bar_chart.py` for the graphs to pick up the new data.
