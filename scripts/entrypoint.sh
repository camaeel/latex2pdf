#!/bin/bash

latexmk -pdf "$FILE.tex" -outdir=/output

exit $?
