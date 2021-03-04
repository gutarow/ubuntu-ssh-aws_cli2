FROM ubuntu:bionic
MAINTAINER Gutar "<admin@escolasoft.com>"
ENV DEBIAN_FRONTEND=noninteractive


# Install ssh
RUN apt-get update -y && apt-get install -y \
  curl \
  git-core \
  gzip \
  openssh-client \
  unzip \
  zip \
  --no-install-recommends && \
  apt-get autoremove -y && \
  rm -rf /var/lib/apt/lists/*
RUN cd /root && \
  curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" -k && \
  unzip awscliv2.zip && \
  ./aws/install -i /usr/local/aws-cli -b /usr/local/bin
