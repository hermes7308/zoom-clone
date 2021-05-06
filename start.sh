#!/bin/bash
PID_FILE=zoom_clone.pid
if test -f "$PID_FILE"; then
    echo "$PID_FILE exists. Please check the kraken bot process is started."
else
    nohup node server.js > /home/irteam/logs/zoom-clone/zoom-clone.log 2>&1 &
    echo $! >$PID_FILE
fi

