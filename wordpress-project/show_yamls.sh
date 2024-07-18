!/bin/bash

# List of specified YAML files
files=(
  "mysql-app.yaml"
  "mysql-storage-hasan.yaml"
  "mysql-storage.yaml"
  "mysql-svv-database.yaml"
  "pvc-storage.yaml"
  "sql-secret.yaml"
  "sql-service.yaml"
  "wordpress-app.yaml"
  "wordpress-efs-pv.yaml"
  "wordpress-efs-pvc.yaml"
  "wordpress-pv.yaml"
  "wordpress-pvc.yaml"
  "wordpress-sc.yaml"
  "wordpress-scv.yaml"
)

# Loop through the files and display their contents
for file in "${files[@]}"; do
  if [ -f "$file" ]; then
    echo "Contents of $file:"
    cat "$file"
    echo
  else
    echo "File $file does not exist."
  fi
done

