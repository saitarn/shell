#!/bin/bash

HOST="google.com2"
ping -c 1 $HOST
if [ "${?}" -eq "0" ]
then
    echo "${HOST} reachable"
else
    echo "${HOST} unreachable."
fi