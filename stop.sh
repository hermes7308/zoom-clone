#!/bin/bash
PID_FILE=zoom_clone.pid
if test -f "$PID_FILE"; then
    kill -9 $(cat $PID_FILE)
    rm $PID_FILE
else
    echo "$PID_FILE doesn't exists. Please check the process is stopped."
fi