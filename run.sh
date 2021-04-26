#!/bin/bash
# needs reflex, get with:
# go get github.com/cespare/reflex

sh build.sh
v run devserver/devserver.v &

reflex -r 'main.v' sh build.sh

cleanup() {
  echo "Cleaning up..."
  kill %1
}
trap cleanup EXIT