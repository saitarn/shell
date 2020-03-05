#!/bin/bash
function hello() {
    echo "hello!!"
    now
}

function now() {
    echo "it's $(date +%r)"
}

hello