#!/bin/bash

if [ $# -ne ]; then
  echo "Missing parameter path to tex file"
  exit -1
fi

latexmk -pdf $1 -outdir=/output

exit $?
