#!/bin/bash
sh styles.sh
echo "Building..."
v -prod -skip-unused -o main.js -b js .