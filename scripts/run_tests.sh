#!/bin/bash


cat > "/input/test.tex" <<- EOM
\documentclass{article}
\begin{document}
First document. This is a test example
\end{document}
EOM

/scripts/entrypoint.sh '/input/test.tex'

RESULT=$?

if [ $RESULT -eq 0 ]; then
  echo "success"
else
  exit $RESULT
fi

if [ ! -f "/output/test.pdf" ]; then 
    exit -1
fi

exit 0
