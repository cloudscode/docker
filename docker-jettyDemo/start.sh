#!/bin/bash

echo -e "Starting the $SERVER_NAME ...\c"
nohup java -jar "$JETTY_BASE/start.jar" jetty.base="$JETTY_WEB" &

if [[ $1 == "-d" ]]; then
  while true; do sleep 1000; done
fi

if [[ $1 == "-bash" ]]; then
  /bin/bash
fi

echo "OK!"
#PIDS=`ps -f | grep java | grep "$DEPLOY_DIR" | awk '{print $2}'`
#echo "PID: $PIDS"
#echo "STDOUT: $STDOUT_FILE"
