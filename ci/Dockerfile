FROM jenkins/jenkins:lts-jdk11

# Docker install
USER root
RUN apt-get update && apt-get install -y \
       apt-transport-https \
       ca-certificates \
       curl \
       gnupg2 \
       software-properties-common

RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN apt-key fingerprint 0EBFCD88
RUN add-apt-repository \
       "deb [arch=amd64] https://download.docker.com/linux/debian \
       $(lsb_release -cs) \
       stable"
  
RUN apt install -y docker.io && DOCKER_CONFIG=${DOCKER_CONFIG:-$HOME/.docker} \
    && mkdir -p $DOCKER_CONFIG/cli-plugins \
    && curl -SL https://github.com/docker/compose/releases/download/v2.17.3/docker-compose-linux-x86_64 -o $DOCKER_CONFIG/cli-plugins/docker-compose \
    && chmod +x $DOCKER_CONFIG/cli-plugins/docker-compose
