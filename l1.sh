#!/bin/bash

createfolder(){
NAME_1=$1
mkdir "${NAME_1}"
if [ $? -eq 0 ]; then
cat << EOF
--------------
Created an new directory/folder $NAME_1 in working directory at $(pwd)
---------------
EOF

else
echo "Couldn't create folder named ${NAME_1}"
fi
}

if [ $# -eq 0 ]; then
echo "User Error: $0 needs <folder-name> as pos arg"
exit 1
fi

createfolder $1