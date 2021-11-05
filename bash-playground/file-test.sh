device0="/dev/sda2" # / (root directory)
if [ -b "$device0" ]
then
echo "$device0 is a block device."
fi
# /dev/sda2 is a block device.
device1="/dev/ttyS1" # PCMCIA modem card.
if [ -c "$device1" ]
then
echo "$device1 is a character device."
fi
# /dev/ttyS1 is a character device.

{
[ -p /dev/fd/0 ] && echo PIPE || echo STDIN
}
show_input_type "Input" # STDIN
echo "Input" | show_input_type # PIPE

#!/bin/bash
# broken-link.sh
#+ eg. sh broken-link.sh /somedir /someotherdir|xargs rm

[ $# -eq 0 ] && directorys=`pwd` || directorys=$@
linkchk () {
for element in $1/*; do
[ -h "$element" -a ! -e "$element" ] && echo \"$element\"
[ -d "$element" ] && linkchk $element
# Of course, '-h' tests for symbolic link, '-d' for directory.
done
}
for directory in $directorys; do
if [ -d $directory ]
then linkchk $directory
else
echo "$directory is not a directory"
echo "Usage: $0 dir1 dir2 ..."
fi
done
exit $?