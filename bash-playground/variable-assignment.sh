#!/bin/bash
#variable-assignment
a=375
hello=$a

echo hello # hello
echo $hello # 375
echo ${hello} # 375

echo "$hello" # 375
echo "${hello}" # 375

hello="A B   C   D"
echo $hello # A B C D
echo "$hello" # A B   C   D

echo '$hello' # $hello

hello= # Setting it to a null value.
echo "\$hello (null value) = $hello" # $hello (null value) =

var1=21 var2=22 var3=$V3
echo
echo "var1=$var1 var2=$var2 var3=$var3"

numbers="one two three"
#           ^    ^
other_numbers="1 2 3"
#               ^ ^

mixed_bag=2\ ---\ Whatever
#           ^    ^ Space after escape (\).
echo "$mixed_bag" # 2 --- Whatever

uninitialized_variable=23 # Set it.
unset uninitialized_variable # Unset it.

exit 0


if [ -z "$unassigned" ]
then
    echo "\$unassigned is NULL."
fi # $unassigned is NULL.

echo "$uninitialized" # (blank line)
let "uninitialized += 5" # Add 5 to it.
echo "$uninitialized" # 5


# Assignment
a=879
echo "The value of \"a\" is $a."

# Assignment using 'let'
let a=16+5
echo "The value of \"a\" is now $a."

echo -n "Values of \"a\" in the loop are: "
for a in 7 8 9 11
do
echo -n "$a "
done

echo -n "Enter \"a\" "
read a
echo "The value of \"a\" is now $a."

R=$(cat /etc/redhat-release)
arch=$(uname -m)

a=`ls -l` # Assigns result of 'ls -l' command to 'a'
echo $a # Unquoted, however, it removes tabs and newlines.
echo
echo "$a" # The quoted variable preserves whitespace.

a=2334
b=${a/23/BB} # Substitute "BB" for "23".
declare -i b # Declaring it an integer
echo "b = $b" # b = BB35

let "b += 1" # BB35 + 1
echo "b = $b" # b = 1

c=BB34
d=${c/BB/23} # Substitute "23" for "BB".
let "d += 1" # 2334 + 1
echo "d = $d" # d = 2335

e='' # ... Or e="" ... Or e=
let "e += 1"
echo "e = $e" # e = 1
let "f += 1" # Arithmetic operations allowed?
echo "f = $f" # f = 1

division by 0 (error token is "0")
let "f /= 0"
let "f /= $undecl_var"

if [ -n "$1" ] # Tested variable is quoted.
then
    echo "Parameter #1 is $1" # Need quotes to escape #
fi

if [ -n "${10}" ] # Parameters > $9 must be enclosed in {brackets}.
then
    echo "Parameter #10 is ${10}"
fi

if [ $# -lt "$MINPARAMS" ]
then
    echo "This script needs at least $MINPARAMS command-line arguments!"
fi

if [ -z $1 ]
then
    exit $E_MISSING_POS_PARAM
fi

variable1_=$1_ # Rather than variable1=$1
