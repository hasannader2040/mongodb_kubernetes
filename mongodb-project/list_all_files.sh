#!/bin/bash

# Directory containing the YAML files
DIRECTORY=~/local-directory/mongodb-project

# List of files to display
FILES=(
  "kubelet-config.yaml"
  "mongodb-app.yaml"
  "mongodb-express-svc.yaml"
  "mongodb-secret.yaml"
  "monodb-sc.yaml"
  "mongo-express.yaml"
  "mongodb-cm.yaml"
  "mongodb-pvc.yaml"
  "mongodb-svc.yaml"
)

# Loop through each file and display its contents
for FILE in "${FILES[@]}"; do
  FILE_PATH="$DIRECTORY/$FILE"
  echo "Contents of $FILE:"
  if [ -f "$FILE_PATH" ]; then
    cat "$FILE_PATH"
  else
    echo "File $FILE not found."
  fi
  echo
done

