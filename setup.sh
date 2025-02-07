#!/bin/bash

# Define the hidden directory name
DIR=".flag_dec"

# Check if the directory exists, if not, create it
if [ ! -d "$DIR" ]; then
    mkdir "$DIR"
    echo "Test flag file" > "$DIR/flag.txt"
    echo "Hidden directory '$DIR' created with a flag file."
else
    echo "Directory '$DIR' already exists."
fi
