#!/bin/bash
set -e  # exit on error (good for CI)

# Install cowsay
sudo apt-get update -y
sudo apt-get install cowsay -y

# Generate ASCII dragon art
cowsay -f dragon "Run for cover, I am a DRAGON ..RAWR" >> dragon.txt

# Verify file contains the word "dragon"
grep -i "dragon" dragon.txt

# Display file contents
cat dragon.txt

# List repo files
ls -ltra
