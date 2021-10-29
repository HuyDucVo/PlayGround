#!/bin/bash
# escaped.sh: escaped characters

echo "This will print \
as one line."

echo "\v\v\v\v" # Prints \v\v\v\v literally.
echo -e "\v\v\v\v" # Prints 4 vertical tabs.

echo -e "\042" # Prints "

echo $'\n'
echo $'\a'

