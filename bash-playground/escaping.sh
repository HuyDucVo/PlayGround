#!/bin/bash
# escaped.sh: escaped characters

echo "This will print \
as one line."

echo "\v\v\v\v" # Prints \v\v\v\v literally.
echo -e "\v\v\v\v" # Prints 4 vertical tabs.

# Use the -e option with 'echo' to print escaped characters.
echo -e "\042" # Prints "

# The $'\X' construct makes the -e option unnecessary.
echo $'\n'
echo $'\a'

echo "Hello" # Hello
echo "\"Hello\" ... he said." # "Hello" ... he said.

echo "\$variable01" # $variable01
echo "The book cost \$7.98." # The book cost $7.98.

echo "\\" # Results in \
# Whereas . . .
echo "\"" # Invokes secondary prompt from the command-line.
# In a script, gives an error message.
# However . . .
echo '\' # Results in \

echo \z # z
echo \\z # \z
echo '\z' # \z
echo '\\z' # \\z
echo "\z" # \z
echo "\\z" # \z

echo `echo \z` # z
echo `echo \\z` # z
echo `echo \\\z` # \z
echo `echo \\\\z` # \z
echo `echo \\\\\\z` # \z
echo `echo \\\\\\\z` # \\z
echo `echo "\z"` # \z
echo `echo "\\z"` # \z

cat <<EOF
\z
EOF # \z
cat <<EOF
\\z
EOF # \z

variable=\
echo "$variable"
# Will not work - gives an error message

variable=\
23skidoo
echo "$variable" # 23skidoo

variable=\
# \^ escape followed by space
echo "$variable" # space

variable=\\\
echo "$variable"
# Will not work - gives an error message

variable=\\\\
echo "$variable" # \\

echo "foo
bar"
#foo
#bar

echo
echo 'foo
bar' # No difference yet.
#foo
#bar

echo foo\
bar # Newline escaped.
#foobar

echo "foo\
bar" # Same here, as \ still interpreted as escape within weak quotes.
#foobar

echo
echo 'foo\
bar' # Escape character \ taken literally because of strong quoting.
#foo\
#bar

