#!/bin/bash
# needs reflex, get with:
# go get github.com/cespare/reflex

sh build.sh
v run devserver/devserver.v &
PID1=$!
v -prod -skip-unused -o main.js -b js -watch . &
PID2=$!

cleanup() {
  echo "Cleaning up..."
  kill -9 $PID1
  kill -9 $PID2
  kill -9 $(( $PID2 + 10 ))
  exit
}
trap cleanup INT

reflex -r 'styles.css' sh styles.sh