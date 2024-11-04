#!/bin/bash

# Directory path
DIR="datasets/CUB_200_2011"

# Check if directory exists
if [ -d "$DIR" ]; then
    echo "Directory $DIR already exists."
else
    echo "Directory $DIR does not exist. Creating now..."
    mkdir -p "$DIR"
    echo "Directory $DIR created."
fi

# Cropping the dataset
echo "Cropping the dataset..."
python3 crop_dataset.py "${DIR}/images" "${DIR}/images.txt" "${DIR}/bounding_boxes.txt" "datasets/cub200_cropped/tmp"
if [ $? -eq 0 ]; then
    echo "Dataset cropped successfully."
else
    echo "Error: Dataset cropping failed."
    exit 1
fi

# Splitting the dataset
# ...
