#!/bin/bash
HOST="google.com"
ping -c 1 $HOST
RETURN_CODE=$?

if [ "$RETURN_CODE" -ne "0" ]
then
    echo "$HOST Unreachable."
else
    echo "$HOST Reachable GOOD."
fi

HOST="googlejojo.com"
ping -c 1 $HOST
RETURN_CODE2=$?

if [ "$RETURN_CODE2" -ne "0" ]
then
    echo "$HOST Unreachable."
else
    echo "$HOST Reachable GOOD."
fi