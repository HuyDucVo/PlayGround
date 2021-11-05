#(0 for true, 1 for false

(( 0 && 1 )) # Logical AND
echo $?

let "num = (( 0 && 1 ))"
echo $num # 0

let "num = (( 0 && 1 ))"
echo $? # 1

(( 200 || 11 )) # Logical OR
echo $? # 0
let "num = (( 200 || 11 ))"
echo $num # 1
let "num = (( 200 || 11 ))"
echo $? # 0

(( 200 | 11 )) # Bitwise OR
echo $? # 0
let "num = (( 200 | 11 ))"
echo $num # 203
let "num = (( 200 | 11 ))"
echo $? # 0

var=-2 && (( var+=2 ))
echo $? # 1

var=-2 && (( var+=2 )) && echo $var # Will not echo $var!

if cmp a b &> /dev/null # Suppress output.
then echo "Files a and b are identical."
else echo "Files a and b differ."
fi

if grep -q Bash file
then echo "File contains at least one occurrence of Bash."
fi

word=Linux
letter_sequence=inu
if echo "$word" | grep -q "$letter_sequence"
# The "-q" option to grep suppresses output.
then
echo "$letter_sequence found in $word"
else
echo "$letter_sequence not found in $word"
fi

if COMMAND_WHOSE_EXIT_STATUS_IS_0_UNLESS_ERROR_OCCURRED
then echo "Command succeeded."
else echo "Command failed."
fi

if [ condition-true ]
then
command 1
command 2
...
else # Or else ...
# Adds default code block executing if original condition tests false.
command 3
command 4
...
fi

if [ condition1 ]
then
command1
command2
command3
elif [ condition2 ]
# Same as else if
then
command4
command5
else
default-command
fi

dir=/home/bozo
if cd "$dir" 2>/dev/null; then # "2>/dev/null" hides error message.
echo "Now in $dir."
else
echo "Can't change to $dir."
fi

decimal=15
octal=017 # = 15 (decimal)
hex=0x0f # = 15 (decimal)
if [ "$decimal" -eq "$octal" ]
then
echo "$decimal equals $octal"
else
echo "$decimal is not equal to $octal" # 15 is not equal to 017
fi # Doesn't evaluate within [ single brackets ]!
if [[ "$decimal" -eq "$octal" ]]
then
echo "$decimal equals $octal" # 15 equals 017
else
echo "$decimal is not equal to $octal"
fi # Evaluates within [[ double brackets ]]!
if [[ "$decimal" -eq "$hex" ]]
then
echo "$decimal equals $hex" # 15 equals 0x0f
else
echo "$decimal is not equal to $hex"
fi # [[ $hexadecimal ]] also evaluates!

var1=20
var2=22
[ "$var1" -ne "$var2" ] && echo "$var1 is not equal to $var2"
home=/home/bozo
[ -d "$home" ] || echo "$home directory does not exist."

