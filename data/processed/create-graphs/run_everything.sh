# Extract data, generate gnus, create graphs
bash unzip_smts.sh
bash generate_gnus.sh
bash create_graphs.sh

# Create run folder to store data and graphs
num_folders=$(find ../graphs/ -maxdepth 1 -type d | wc -l)
new_folder_num=$((num_folders + 1))
new_folder_name="../graphs/run_$new_folder_num"
mkdir "$new_folder_name"
mkdir "$new_folder_name"/istio
mkdir "$new_folder_name"/linkerd
mkdir "$new_folder_name"/kubernetes

# Move data files to folder
cp istio.zip "$new_folder_name"/istio.zip
cp linkerd.zip "$new_folder_name"/linkerd.zip
cp kubernetes.zip "$new_folder_name"/kubernetes.zip

# Move files to folder run
cp *.png ./"$new_folder_name"
cp kubernetes/*.png ./"$new_folder_name"/kubernetes/
cp istio/*.png ./"$new_folder_name"/istio/
cp linkerd/*.png ./"$new_folder_name"/linkerd/

#Clear work area
rm *.png
find ./linkerd/ ! -name '*.p' -type f -delete
find ./istio/ ! -name '*.p' -type f -delete
find ./kubernetes/ ! -name '*.p' -type f -delete
