#!/bin/bash

echo "Executing script: $0"
for PARAM in $@
do
    # Test cat file
    cat ../$PARAM.txt
    echo ""
done

