#!/bin/bash

MY_SHELL="bash"
echo "I like the ${MY_SHELL} shell."
echo "I am ${MY_SHELL}ing on my keyboard."

SERVER_NAME=$(hostname)
echo "Your are running on ${SERVER_NAME}."

LIST_DIR=$(ls -la)
echo "Your list is \n${LIST_DIR}"
