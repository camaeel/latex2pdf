FROM ubuntu:latest

ENV TZ=Europe/Warsaw

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y --no-install-recommends texlive-latex-extra texlive-fonts-extra texlive-fonts-recommended latexmk texlive-lang-polish && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir /scripts && \
    chown 1100:1100 /scripts && \
    mkdir /input && \
    chown 1100:1100 /input && \
    mkdir /output && \
    chown 1100:1100 /output

ADD scripts/* /scripts/

RUN chmod a+x /scripts/*.sh 

VOLUME [ "/input", "/output" ]

USER 1100
WORKDIR /input

ENTRYPOINT [ "/scripts/entrypoint.sh" ] 

