# importing package
import matplotlib.pyplot as plt

USERS = ['100', '200', '400', '600', '800']
REQUESTS = ['10']
SERVICES = ['20', '40', '80']

COLOURS = ['#a6cee3', '#1f78b4', '#b2df8a', '#33a02c', '#fb9a99', '#e31a1c', '#fdbf6f', '#ff7f00']

def get_data(files):
    data = []
    data_label = []
    for file in files:
        try:
            with open(file) as f:
                lines = f.readlines()
                y = []
                data_label = [line.split(',')[0] for line in lines]
                y_str = [line.split(',')[1][:-2] for line in lines]
                for val in y_str:
                    try:
                        y.append(float(val))
                    except:
                        pass
                data.append(y)
        except:
            print(f"File {file} does not exist")
            data.append([[]])
    return data, data_label

def get_cpu_data(service, request):
    linkerd_files = [f"linkerd/grouped_cpu_file_{u}_{request}_{service}" for u in USERS]
    istio_files = [f"istio/grouped_cpu_file_{u}_{request}_{service}" for u in USERS]
    kubernetes_files = [f"kubernetes/grouped_cpu_file_{u}_{request}_{service}" for u in USERS]
    final_labels = []
    k_d, labels = get_data(kubernetes_files)
    if len(labels) > len(final_labels):
        final_labels = labels
    i_d, labels = get_data(istio_files)
    if len(labels) > len(final_labels):
        final_labels = labels
    l_d, labels = get_data(linkerd_files)
    if len(labels) > len(final_labels):
        final_labels = labels

    return (k_d, i_d, l_d, final_labels)
 
# plot bars in stack manner
def gen_chart(k_d, i_d, l_d, labels):
    plt.figure(figsize=(10, 7))
    print(k_d)
    for u in range(len(USERS)):
        print(f"Plotting values for {USERS[u]} with user index {[u]}")
        l_k = f"{USERS[u]} \nK8"
        l_l = f"{USERS[u]} \nLinkerd"
        l_i = f"{USERS[u]} \nIstio"
        for label in range(len(labels)):
            print(f"Plotting category {labels[label]} with K8 value {k_d[u][label] if label < len(k_d[u]) else 0} with colour {COLOURS[label]} starting at {sum(k_d[u][:label]) if u < len(k_d) and label < len(k_d[u]) else 0}")            
            plt.bar([l_k], k_d[u][label] if u < len(k_d) and label < len(k_d[u]) else 0, bottom=sum(k_d[u][:label]) if u < len(k_d) and label < len(k_d[u]) else 0, color=COLOURS[label])
        for label in range(len(labels)): #Could not change legend, so plot all Kubernetes first, then do the others
            plt.bar([l_l], l_d[u][label] if u < len(l_d) and label < len(l_d[u]) else 0, bottom=sum(l_d[u][:label]) if u < len(l_d) and label < len(l_d[u]) else 0, color=COLOURS[label])
            plt.bar([l_i], i_d[u][label] if u < len(i_d) and label < len(i_d[u]) else 0, bottom=sum(i_d[u][:label]) if u < len(i_d) and label < len(i_d[u]) else 0, color=COLOURS[label])

            
    plt.xlabel("Number of Users and Service Mesh")
    plt.ylabel("Avg CPU Usage (s)")

    print(labels)
    print(COLOURS[:len(labels)])

    plt.legend(labels)
        
    plt.title(f"Avg CPU Usage by Service Mesh per Area - {req} RPU, {service} MicroServices")
    plt.savefig(f'smt_memory_boxplot_{req}_{service}.png')

for service in SERVICES:
    for req in REQUESTS:
        kube_dat,istio_dat,linkerd_dat,labels = get_cpu_data(service, req)
        gen_chart(kube_dat,istio_dat,linkerd_dat,labels)