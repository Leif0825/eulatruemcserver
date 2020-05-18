#!/bin/bash

if [[ "${ENABLE_AUTOPAUSE^^}" = "TRUE" && "$( ps -a -o stat,comm | grep 'java' | awk '{ print $1 }')" =~ ^T.*$ ]]; then
  echo "Java process suspended by Autopause function"
  exit 0
else
  mc-monitor status --host localhost --port $SERVER_PORT
  exit $?
fi
