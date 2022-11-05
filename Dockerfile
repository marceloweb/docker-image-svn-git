FROM ubuntu:20.04

RUN apt update -y
RUN apt install -y apt-transport-https ca-certificates curl software-properties-common

RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
RUN apt install -y docker-ce subversion git-svn

ENTRYPOINT service docker start
