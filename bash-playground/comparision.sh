if [ "$a" -eq "$b" ]
if [ "$a" -ne "$b" ]
if [ "$a" -gt "$b" ]
if [ "$a" -ge "$b" ]
if [ "$a" -lt "$b" ]
if [ "$a" -le "$b" ]

(("$a" < "$b"))
(("$a" <= "$b"))
(("$a" > "$b"))
(("$a" >= "$b"))

if [ "$a" = "$b" ] # need space
if [ "$a" == "$b" ]

if [ "$a" != "$b" ]
if [[ "$a" < "$b" ]]
if [ "$a" \< "$b" ]

if [[ "$a" > "$b" ]]
if [ "$a" \> "$b" ]

String=''
if [ -z "$String" ]
then
echo "\$String is null."
else
echo "\$String is NOT null."
fi # $String is null.

if [ -n "$string1" ] # This time, $string1 is quoted.
then
echo "String \"string1\" is not null."
else
echo "String \"string1\" is null."
fi # Quote strings within test brackets!

if [ $string1 ] # This time, $string1 stands naked.
then
echo "String \"string1\" is not null."
else
echo "String \"string1\" is null."
fi

string1=initialized
if [ $string1 ] # Again, $string1 stands unquoted.
then
echo "String \"string1\" is not null."
else
echo "String \"string1\" is null."
fi # Again, gives correct result.

string1="a = b"
if [ $string1 ] # Again, $string1 stands unquoted.
then
echo "String \"string1\" is not null."
else
echo "String \"string1\" is null."
fi # Not quoting "$string1" now gives wrong result!

[[ condition1 && condition2 ]]

if [ "$expr1" -a "$expr2" ]
then
echo "Both expr1 and expr2 are true."
else
echo "Either expr1 or expr2 is false."
fi

&& and || "short-circuit" while -a and -o do not.

if [ ! -f $FILENAME ]
then
  ...


if [ $condition1 ] && [ $condition2 ]
#  Same as:  if [ $condition1 -a $condition2 ]
#  Returns true if both condition1 and condition2 hold true...

if [[ $condition1 && $condition2 ]]    # Also works.
#  Note that && operator not permitted inside brackets
#+ of [ ... ] construct.

if [ $condition1 ] || [ $condition2 ]
# Same as:  if [ $condition1 -o $condition2 ]
# Returns true if either condition1 or condition2 holds true...

if [[ $condition1 || $condition2 ]]    # Also works.
#  Note that || operator not permitted inside brackets
#+ of a [ ... ] construct.

