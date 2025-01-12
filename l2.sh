#!/bin/bash

executepyfile(){

FILE_NAME=$1

OUTPUT_FROM_PYTHON=$(python3 $FILE_NAME)

if [ $? -eq 1 ]; then
echo "Execution is unsuccessful"
exit 1
fi

cat << EOF
$OUTPUT_FROM_PYTHON
EOF
}

if [ $# -eq 0 ]; then
echo "Usage: $0 <Python file name with extension> "
exit 1
fi

executepyfile $1