FROM ubuntu:24.04

LABEL maintainer="V1cente"
LABEL version="0.0.1"
LABEL description="This is a Dockerfile for Hollywood without the need to install it on your system."

ENV DEBIAN_FRONTEND=noninteractive

RUN \
  apt-get update -qq && \
  apt-get install -qqy hollywood && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* && \
  rm -rf /tmp/* /var/tmp/* \
  updatedb

CMD ["hollywood"]
