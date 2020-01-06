#!/bin/bash


cat > "/input/test.tex" <<- EOM
\documentclass{article}
\begin{document}
First document. This is a simple example, with no 
extra parameters or packages included.
\end{document}
EOM


export FILE=test 

/scripts/entrypoint.sh

RESULT=$?

if [ $RESULT -eq 0 ]; then
  echo "success"
else
  exit $RESULT
fi

if [ ! -f "/output/$FILE.pdf" ]; then 
    exit -1
fi

exit 0
