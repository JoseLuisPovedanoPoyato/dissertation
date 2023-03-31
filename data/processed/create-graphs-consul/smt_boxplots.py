# Import libraries
import matplotlib.pyplot as plt
import numpy as np

# Creating dataset

USERS = ['100', '200', '400']
REQUESTS = ['10']
SERVICES = ['10', '20', '40']

ISTIO_COLOUR = '#7570b3'
LINKERD_COLOUR = '#d95f02'
KUBERNETES_COLOUR = '#1b9e77'
CONSUL_COLOUR = '#e69f00'

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

def get_latency_data(service, request):
    linkerd_files = [f"linkerd/csv_{u}_{request}_{service}" for u in USERS]
    istio_files = [f"istio/csv_{u}_{request}_{service}" for u in USERS]
    kubernetes_files = [f"kubernetes/csv_{u}_{request}_{service}" for u in USERS]
    consul_files = [f"consul/csv_{u}_{request}_{service}" for u in USERS]
    return (get_data(kubernetes_files), get_data(istio_files), get_data(linkerd_files), get_data(consul_files))

def set_to_MB(data):
    for l in range(len(data)):
        for d in range(len(data[l])):
            data[l][d] = data[l][d]/(1024*1024) 
    return data

def get_memory_data(service, request):
    linkerd_files = [f"linkerd/memory_{u}_{request}_{service}" for u in USERS]
    istio_files = [f"istio/memory_{u}_{request}_{service}" for u in USERS]
    kubernetes_files = [f"kubernetes/memory_{u}_{request}_{service}" for u in USERS]
    consul_files = [f"consul/memory_{u}_{request}_{service}" for u in USERS]
    k_d = set_to_MB(get_data(kubernetes_files))
    i_d = set_to_MB(get_data(istio_files))
    l_d = set_to_MB(get_data(linkerd_files))
    c_d = set_to_MB(get_data(consul_files))
    return (k_d, i_d, l_d, c_d)

def label_latency_graph(service, request):
    plt.ylabel('Response Time (since first response packet) (ms)') 
    plt.xlabel('Number of Simultaneous Users')
    plt.title(f"SMTs Latency - {request} RPU, {service} MicroServices")  

    plt.tight_layout()
    plt.savefig(f'smt_latency_boxplot_{request}_{service}.png')

def label_memory_graph(service, request):
    plt.ylabel('Memory Usage (MB)') 
    plt.xlabel('Number of Simultaneous Users')
    plt.title(f"SMTs Memory Usage - {request} RPU, {service} MicroServices")  

    plt.tight_layout()
    plt.savefig(f'smt_memory_boxplot_{request}_{service}.png')

def gen_graph(data_kubernetes, data_istio, data_linkerd, data_consul):
    ticks = [u for u in USERS]
    plt.figure()

    flierprops_istio = dict(marker='.', markersize=4, linestyle='none', markeredgecolor=ISTIO_COLOUR)
    flierprops_linkerd = dict(marker='.', markersize=4, linestyle='none', markeredgecolor=LINKERD_COLOUR)
    flierprops_kubernetes = dict(marker='.', markersize=4, linestyle='none', markeredgecolor=KUBERNETES_COLOUR)
    flierprops_consul = dict(marker='.', markersize=4, linestyle='none', markeredgecolor=CONSUL_COLOUR)

    bp_kubernetes = plt.boxplot(data_kubernetes, positions=np.array(range(len(data_kubernetes)))*2.5-0.8, sym='.', widths=0.4, flierprops=flierprops_kubernetes)
    bp_linkerd = plt.boxplot(data_linkerd, positions=np.array(range(len(data_linkerd)))*2.5-0.2, sym='.', widths=0.4, flierprops=flierprops_linkerd)
    bp_istio = plt.boxplot(data_istio, positions=np.array(range(len(data_istio)))*2.5+0.4, sym='.', widths=0.4, flierprops=flierprops_istio)
    bp_consul = plt.boxplot(data_consul, positions=np.array(range(len(data_consul)))*2.5+1.0, sym='.', widths=0.4, flierprops=flierprops_consul)
    
    set_box_color(bp_istio, ISTIO_COLOUR) # colors are from http://colorbrewer2.org/
    set_box_color(bp_linkerd, LINKERD_COLOUR)
    set_box_color(bp_kubernetes, KUBERNETES_COLOUR)
    set_box_color(bp_consul, CONSUL_COLOUR)

    # draw temporary red and blue lines and use them to create a legend
    plt.plot([], c=KUBERNETES_COLOUR, label='Kubernetes')
    plt.plot([], c=ISTIO_COLOUR, label='Istio')
    plt.plot([], c=LINKERD_COLOUR, label='Linkerd')
    plt.plot([], c=CONSUL_COLOUR, label='Consul')
    plt.legend()
    plt.xticks(range(0, len(ticks) * 2, 2), ticks)
    
def gen_latency_graph(service, request):
    data_kubernetes, data_istio, data_linkerd, data_consul = get_latency_data(service, request)
    gen_graph(data_kubernetes, data_istio, data_linkerd, data_consul)
    label_latency_graph(service, request)

def gen_memory_graph(service, request):
    data_kubernetes, data_istio, data_linkerd, data_consul = get_memory_data(service, request)
    gen_graph(data_kubernetes, data_istio, data_linkerd, data_consul)
    label_memory_graph(service, request)


for service in SERVICES:
    for req in REQUESTS:
        gen_latency_graph(service, req)
        gen_memory_graph(service, req)