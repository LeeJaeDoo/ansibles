#!/bin/bash

pid=`ps -ef | grep sp-gateway-0.0.1-SNAPSHOT.jar | grep -v 'grep' | awk '{print $2}'`
if [ -n "$pid" ]; then
  echo $pid
  kill -9 $pid
fi
