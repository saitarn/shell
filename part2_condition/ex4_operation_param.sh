#!/bin/bash

echo "Executing script: $0"
echo "Archiving user: $1"

# Test cat file
cat ../${1}.txt

# list file
ls -la $1

#tar cf /archivees/${1}.tar.gz /home$/{1}

# Assign first parameter to file Parameter
PARAM=$1

echo "YOUR PARAM is : ${PARAM}"
