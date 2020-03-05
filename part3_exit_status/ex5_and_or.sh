#!/bin/bash

HOST="google.com2"
ping -c 1 $HOST || echo "$HOST Unreachable."