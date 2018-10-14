#!/bin/bash
#
# this script demonstrates a few forms of multiline commands
#
# multiline inline data using quoted string echo "This is an example of using
#     the string quote mechanism to create a multiline string. The string is
#        created on the command line, like and other string."
#
# multi;ine pipeline sequence
echo "this is an example of a command that spans lines by continuing a pipeline sequence"
sed "aThe additional lines are intended for code clarity" |
tac # the tac reserves the order of the output lines

# multiline command using backlash to escape the end of line character
echo \
    "This line continues because we turned off the end of line character on the first line"
# multiline command due to inline data using HERE document
cat <<EOF
# This is a sample of multiline text data using a HERE document. You can indent
# this one if you wish, by disabaling input tabs, but you still might not get what you want.
EOF
