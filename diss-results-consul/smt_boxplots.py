# Import libraries
import matplotlib.pyplot as plt
import numpy as np

# Creating dataset

USERS = ['100', '200', '400', '600', '800']
REQUESTS = ['10']
SERVICES = ['20', '40', '80']

ISTIO_COLOUR = '#1f78b4'
LINKERD_COLOUR = '#b2df8a'
KUBERNETES_COLOUR = '#a6cee3'
CONSUL_COLOUR = '#b9df33'

def get_data(files):
    data = []
    for file in files:
        with open(file) as f:
            lines = f.readlines()
            y = []
            y_str = [line.split(',')[1][:-2] for line in lines]
            for val in y_str:
                try:
                    y.append(float(val))
                except:
                    pass
            data.append(y)
    return data

def set_box_color(bp, color):
        plt.setp(bp['boxes'], color=color)
        plt.setp(bp['whiskers'], color=color)
        plt.setp(bp['caps'], color=color)
        plt.setp(bp['medians'], color=color)
        plt.setp(bp['fliers'], color=color)
        plt.setp(bp['means'], color=color)

def change_outlier_colour(bp, c):
    top_points = bp["fliers"][0].get_data()[1]
    bottom_points = bp["fliers"][2].get_data()[1]
    plt.plot(np.ones(len(top_points)), top_points, "x", color=f"{c}", markersize=1)
    plt.plot(np.ones(len(bottom_points)), bottom_points, "x", color=f"{c}")

def gen_graph(service, request):
    linkerd_files = []
    for u in USERS:
            linkerd_files.append(f"linkerd/csv_{u}_{request}_{service}")

    istio_files = []
    for u in USERS:
            istio_files.append(f"istio/csv_{u}_{request}_{service}")

    kubernetes_files = []
    for u in USERS:
            kubernetes_files.append(f"kubernetes/csv_{u}_{request}_{service}")

    consul_files = []
    for u in USERS:
        consul_files.append(f"consul/csv_{u}_{request}_{service}")


    data_istio = get_data(istio_files)
    data_linkerd = get_data(linkerd_files)
    data_kubernetes = get_data(kubernetes_files)
    data_consul = get_data(consul_files)

    ticks = [u for u in USERS]

    plt.figure()

    bp_kubernetes = plt.boxplot(data_kubernetes, positions=np.array(range(len(data_kubernetes)))*2.0-0.8, sym='.', widths=0.4)
    bp_istio = plt.boxplot(data_istio, positions=np.array(range(len(data_istio)))*2.0-0.2, sym='.', widths=0.4)
    bp_linkerd = plt.boxplot(data_linkerd, positions=np.array(range(len(data_linkerd)))*2.0+0.4, sym='.', widths=0.4)
    bp_consul = plt.boxplot(data_consul, positions=np.array(range(len(data_consul)))*2.0+1.0, sym='.', widths=0.4)
    
    set_box_color(bp_istio, ISTIO_COLOUR) # colors are from http://colorbrewer2.org/
    set_box_color(bp_linkerd, LINKERD_COLOUR)
    set_box_color(bp_kubernetes, KUBERNETES_COLOUR)
    set_box_color(bp_consul, CONSUL_COLOUR)

    #Change outlier colour
    #change_outlier_colour(bp_istio, ISTIO_COLOUR)
    #change_outlier_colour(bp_linkerd, LINKERD_COLOUR)
    #change_outlier_colour(bp_kubernetes, KUBERNETES_COLOUR)

    # draw temporary red and blue lines and use them to create a legend
    plt.plot([], c=KUBERNETES_COLOUR, label='Kubernetes')
    plt.plot([], c=ISTIO_COLOUR, label='Istio')
    plt.plot([], c=LINKERD_COLOUR, label='Linkerd')
    plt.plot([], c=CONSUL_COLOUR, label='Consul')
    plt.legend()

    plt.ylabel('Response Time (since first response packet) (ms)') 
    plt.xlabel('Number of Simultaneous Users')
    plt.title(f"SMTs Latency - {request} RPU, {service} MicroServices")  

    plt.xticks(range(0, len(ticks) * 2, 2), ticks)
    plt.tight_layout()
    plt.savefig(f'smt_latency_boxplot_{request}_{service}')

for service in SERVICES:
    for req in REQUESTS:
        gen_graph(service, req)