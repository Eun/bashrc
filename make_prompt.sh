#!/bin/bash
OUTFILE="/tmp/$$.bashrc.generated"
echo > $OUTFILE
echo "######### PROMPT v2.0 #########" >> $OUTFILE
cat << EOF >> $OUTFILE

## SETTINGS ##
export PS1_SET_TITLE=1
export PS1_SET_TITLE_SSH=1
export PS1_SET_TITLE_WORKING="!"
export PS1_SHOW_GIT=1
export PS1_COLOR_USER="\e[0;32m"           # green
export PS1_COLOR_ROOT="\e[0;31m"           # red
export PS1_COLOR_AT="\e[0m"                # no color
export PS1_COLOR_HOSTNAME="\e[1;30m"       # dark gray
export PS1_COLOR_COLON="\e[0m"             # no color
export PS1_COLOR_PATH="\e[1;33m"           # yellow
export PS1_COLOR_SHELL_USER="\e[0m"        # no color
export PS1_COLOR_SHELL_ROOT="\e[0;31m"     # red
export PS1_COLOR_COMMAND="\e[0m"           # no color
export PS1_COLOR_GIT_UPTODATE="\e[0;32m"   # green
export PS1_COLOR_GIT_MODIFIED="\e[0;31m"   # red
export PS1_COLOR_GIT_AHEAD="\e[0;33m"      # yellow

EOF

echo "export PROMPT_COMMAND='" >> $OUTFILE
sed "s/'/'\\\''/g" <prompt >>$OUTFILE

echo "'" >> $OUTFILE

echo -e "Done!\nNow you need to append $OUTFILE to your bashrc!"