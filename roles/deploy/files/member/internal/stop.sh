#!/bin/bash

pid=`ps -ef | grep internal-1.0.jar | grep -v 'grep' | awk '{print $2}'`
if [ -n "$pid" ]; then
  echo $pid
  kill -9 $pid
fi
