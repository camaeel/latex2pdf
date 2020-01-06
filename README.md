# latex2pdf
Image contains latex tools and provides easy way to render tex files to pdf


# Usage

In order to convert tex files you should provide to volumes: 
- input 
- output
and set env variable FILE to tex filename (without .tex extension). 

Example
```
docker run  --rm  -e FILE=filename -v "$PWD/output:/output" -v "$PWD/document:/input:ro" latex2pdf
``` 
