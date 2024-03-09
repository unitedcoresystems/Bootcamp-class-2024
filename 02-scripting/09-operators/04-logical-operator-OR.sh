#!/bin/bash

a=$1

if [ "$a" -lt 0 ] || [ "$a" -gt 10 ]; then
    echo "Variable a is outside the range of 1 to 9."
fi

if [ "$a" -eq 5 ] || ([ "$a" -gt 10 ] && [ "$a" -lt 20 ]); then
    echo "Variable a is either 5 or between 11 and 19."
fi
