# latex2pdf
Image contains latex tools and provides easy way to render tex files to pdf

## :exclamation:  PROJECT NO LONGER MAINTAINED. 
:exclamation:  I switched my builds to image: [reitzig/texlive-base](https://hub.docker.com/r/reitzig/texlive-base).  


# Usage

In order to convert tex files you should provide two volumes: 
- input 
- output
and provide as command (parameter for entrypoint) input tex file path. 
Probably you will also have to set user id and gid of user with write rights to output (or output dir can be set to world writable).

Example
```
docker run --rm -v "$PWD/output:/output" -v "$PWD/document:/input:ro" -u "`id -u`:`id -g`" latex2pdf filename.tex
``` 
