#!/bin/bash

# Define the mappings of old filenames to new filenames
declare -A file_map

file_map["mysql-app.yaml"]="mysql-deployment.yaml"
file_map["mysql-storage-hasan.yaml"]="efs-sc.yaml"
file_map["mysql-storage.yaml"]="mysql-storage-hasan.yaml"
file_map["mysql-svv-database.yaml"]="mysql-service.yaml"
file_map["pvc-storage.yaml"]="mysql-pvc.yaml"
file_map["sql-secret.yaml"]="mysql-pass.yaml"
file_map["sql-service.yaml"]="my-mysql-service.yaml"
file_map["wordpress-app.yaml"]="wordpress-deployment.yaml"
file_map["wordpress-efs-pv.yaml"]="wordpress-efs-pv.yaml"
file_map["wordpress-efs-pvc.yaml"]="wordpress-efs-pvc.yaml"
file_map["wordpress-pv.yaml"]="wordpress-efs-pv.yaml"
file_map["wordpress-pvc.yaml"]="wordpress-efs-pvc.yaml"
file_map["wordpress-sc.yaml"]="efs-sc-wordpress.yaml"
file_map["wordpress-scv.yaml"]="wordpress-svc.yaml"

# Change to the directory containing the YAML files
cd ~/local-directory/wordpress-project

# Rename the files
for old_name in "${!file_map[@]}"; do
  new_name=${file_map[$old_name]}
  if [ -f "$old_name" ]; then
    echo "Renaming $old_name to $new_name"
    mv "$old_name" "$new_name"
  else
    echo "File $old_name does not exist."
  fi
done

# Remove old resources from the cluster
#echo "Removing old resources from the cluster..."
#kubectl delete -f .

# Apply the updated YAML files
#echo "Applying updated YAML files..."
#kubectl apply -f .

echo "Done!"

