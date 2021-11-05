var=27
category=minerals  # No spaces allowed after the "=".

#   =  as a test operator

if [ "$string1" = "$string2" ]
then
   command
fi

#  if [ "X$string1" = "X$string2" ] is safer,
#+ to prevent an error message should one of the variables be empty.
#  (The prepended "X" characters cancel out.)

let "z=5**3"    # 5 * 5 * 5
echo "z = $z"   # z = 125

