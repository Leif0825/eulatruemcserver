#!/bin/bash

if [[ $( ps -a -o stat,comm | grep 'java' | awk '{ print $1 }') =~ ^T.*$ ]] ; then
  echo "[$(date -Iseconds)] [Autopause] Knocked, resuming Java process" >/tmp/terminal-mc
  killall -q -CONT java
fi
