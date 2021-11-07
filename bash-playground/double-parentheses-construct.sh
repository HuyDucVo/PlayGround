#!/bin/bash
# c-vars.sh
# Manipulating a variable, C-style, using the (( ... )) construct.

(( a = 23 ))
echo "a (initial value) = $a"   # 23

(( a++ ))
echo "a (after a++) = $a"       # 24

(( a-- ))
echo "a (after a--) = $a"       # 23

(( ++a ))
echo "a (after ++a) = $a"       # 24

(( --a ))  
echo "a (after --a) = $a"

n=1; let --n && echo "True" || echo "False"  # False
n=1; let n-- && echo "True" || echo "False"  # True

(( t = a<45?7:11 ))   # C-style trinary operator.
echo "If a < 45, then t = 7, else t = 11."  # a = 23
echo "t = $t "                              # t = 7