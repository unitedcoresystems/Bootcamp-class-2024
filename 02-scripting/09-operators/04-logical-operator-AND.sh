#!/bin/bash

a=$1

if [ "$a" -gt 0 ] && [ "$a" -lt 10 ]; then
    echo "Variable a is between 1 and 9."
fi
