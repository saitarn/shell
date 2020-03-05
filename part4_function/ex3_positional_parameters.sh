#!/bin/bash
function hello() {
    echo "Hello $1"
}
hello Saitarn

# Output is :
# Hello Saitarn

function hello2() {
    for NAME in $@
    do
        echo "Hello $NAME"
    done
}

hello2 saitarn jo fon mom