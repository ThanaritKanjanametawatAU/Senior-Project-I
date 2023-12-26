#!/bin/bash

# Path to the 'dataset' directory
DATASET_DIR="dataset"

# Check if the 'dataset' directory exists
if [ -d "$DATASET_DIR" ]; then
    # Iterate over each folder in the 'dataset' directory
    for folder in "$DATASET_DIR"/*; do
        if [ -d "$folder" ]; then
            # Create 'original' and 'preprocessed' directories in each folder
            mkdir -p "$folder/original"
            mkdir -p "$folder/preprocessed"
            rm "$folder/prep.ipynb"
        fi
    done
else
    echo "'$DATASET_DIR' directory does not exist."
fi
