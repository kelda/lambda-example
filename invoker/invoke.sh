#!/bin/bash

while true; do
  echo "Invoking lambda"
  curl -d '{"foo":"bar"}' http://lambda:9001/2015-03-31/functions/test/invocations
  echo
  echo "Sleeping 5 seconds"
  sleep 5
done
