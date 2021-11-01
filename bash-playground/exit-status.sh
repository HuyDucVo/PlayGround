#!/bin/bash
echo hello
echo $? # Exit status 0 returned because command executed successfully.
lskdf # Unrecognized command.
echo $? # Non-zero exit status returned -- command failed to execute.
echo
exit 113 # Will return 113 to shell.
# To verify this, type "echo $?" after script terminates.

true # The "true" builtin.
echo "exit status of \"true\" = $?" # 0
! true
echo "exit status of \"! true\" = $?" # 1

ls | bogus_command # bash: bogus_command: command not found
echo $? # 127
! ls | bogus_command # bash: bogus_command: command not found
echo $? # 0

