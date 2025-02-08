#!/bin/bash

# Define the hidden directory
DIR=".flag_dec"

# Check if the directory exists, if not, create it
if [ ! -d "$DIR" ]; then
    mkdir "$DIR"

    # Fake hint in the main hidden directory
    echo "Nice try! But you owe me a cup of coffee before I reveal the secret. ☕" > "$DIR/README.txt"

    # Create another misleading folder inside the hidden directory
    FAKE_DIR="$DIR/.coffee_shop"
    mkdir "$FAKE_DIR"

    # Another fake hint
    echo "The real secret is inside a warm cup... but not this one! Try again. ☕" > "$FAKE_DIR/latte.txt"

    # The REAL hidden flag (buried deep!)
    SECRET_FILE="$FAKE_DIR/sugar.txt"
    echo "flag{C0ff33_1s_n0t_Fr33}" > "$SECRET_FILE"

    echo "Hidden directory '$DIR' created with deceptive coffee clues."
else
    echo "Directory '$DIR' already exists."
fi
