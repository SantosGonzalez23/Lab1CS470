#!/bin/bash

# Define main directory
MAIN_DIR=$(date "+%Y-%m-%d_%H-%M-%S")  # Current date and time for the main directory name

# Step 1: Create the main directory
echo "Creating main directory $MAIN_DIR..."
mkdir -p "$MAIN_DIR"

# Step 2: Create subdirectories file101 to file110 inside the main directory
echo "Creating subdirectories inside $MAIN_DIR..."
for i in $(seq 101 110); do
  mkdir -p "$MAIN_DIR/file$i"
done

# Step 3: Create .txt files in each subdirectory and write a programming language to each file
echo "Creating .txt files and writing programming languages..."
languages=("Python" "Java" "C" "JavaScript" "Ruby" "Go" "Swift" "PHP" "Rust" "Kotlin")

for i in $(seq 101 110); do
  echo "${languages[$((i - 101))]}" > "$MAIN_DIR/file$i/tuser$((i + 400)).txt"
done

# Step 4: Display the contents of the main directory
echo "Contents of $MAIN_DIR:"
ls "$MAIN_DIR"