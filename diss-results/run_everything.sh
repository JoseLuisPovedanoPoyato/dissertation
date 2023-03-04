bash unzip_smts.sh
bash generate_gnus.sh
bash create_graphs.sh

num_folders=$(find ./graphs/ -maxdepth 1 -type d | wc -l)
new_folder_num=$((num_folders + 1))
new_folder_name="graphs/run_$new_folder_num"

mkdir "$new_folder_name"
mkdir "$new_folder_name"/istio
mkdir "$new_folder_name"/linkerd
mkdir "$new_folder_name"/kubernetes

cp istio.zip "$new_folder_name"/istio.zip
cp linkerd.zip "$new_folder_name"/linkerd.zip
cp kubernetes.zip "$new_folder_name"/kubernetes.zip

pwd

cp *.png ./"$new_folder_name"

cp kubernetes/*.png ./"$new_folder_name"/kubernetes/
cp istio/*.png ./"$new_folder_name"/istio/
cp linkerd/*.png ./"$new_folder_name"/linkerd/
