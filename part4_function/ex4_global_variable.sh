#!/bin/bash
my_function() {
    GLOBAL_VAR=1
}
# GLOBAL_VAR not available yet. print empty data 
echo $GLOBAL_VAR

my_function
# GLOBAL_VAR is NOW Available.
echo $GLOBAL_VAR