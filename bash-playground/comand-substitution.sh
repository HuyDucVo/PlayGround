script_name=`basename $0`
echo "The name of this script is $script_name."

rm `cat filename`   # "filename" contains a list of files to delete.

textfile_listing=`ls *.txt`
echo $textfile_listing

textfile_listing2=$(ls *.txt)   # The alternative form of command substitution.
echo $textfile_listing2

old_tty_setting=$(stty -g)   # Save old terminal setting.
echo "Hit a key "
stty -icanon -echo           # Disable "canonical" mode for terminal.
                             # Also, disable *local* echo.

key=$(dd bs=1 count=1 2> /dev/null)   # Using 'dd' to get a keypress.
stty "$old_tty_setting"      # Restore old setting. 
echo "You hit ${#key} key."  # ${#variable} = number of characters in $variable

key=$(dd bs=1 count=1 2> /dev/null)   # Using 'dd' to get a keypress.
stty "$old_tty_setting"      # Restore old setting. 
echo "You hit ${#key} key."  # ${#variable} = number of characters in $variable

#include <stdio.h>

/*  "Hello, world." C program  */		

int main()
{
  printf( "Hello, world.\n" );
  return (0);
}
bash$ gcc -o hello hello.c

#!/bin/bash
# hello.sh		

greeting=`./hello`
echo $greeting
bash$ sh hello.sh
Hello, world.

