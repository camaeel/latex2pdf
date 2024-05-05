#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Missing parameter path to tex file"
  exit -1
fi

latexmk -pdf $1 -outdir=/output

exit $?
