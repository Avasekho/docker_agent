FROM maven:3.8.5-jdk-11

RUN apt-get update

# Install ssh and docker
RUN apt-get -y install openssh-client docker.io

# Confugure ssh client
COPY id_rsa /root/.ssh/id_rsa
RUN chmod 600 /root/.ssh/id_rsa

# Clear cache
RUN apt-get clean
