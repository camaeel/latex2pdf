FROM ubuntu:latest

ENV TZ=Europe/Warsaw

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN mkdir /scripts && \
    chown 1000:1000 /scripts && \
    mkdir /input && \
    chown 1000:1000 /input && \
    apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y texlive-full texlive-fonts-extra && \

ADD scripts /scripts

RUN chmod a+x /scripts/*.sh 

USER 1000
WORKDIR /input

ENTRYPOINT [ "/entrypoint.sh" ] 

