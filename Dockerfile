FROM debian:buster-slim

LABEL maintainer="Matt Farmer <matt@frmr.me>"

LABEL description="A doctl docker image for interacting with DigitalOcean"

LABEL me.frmr.doctl.version="1.18.0"

ENV DOCTL_VERSION 1.18.0

ADD https://github.com/digitalocean/doctl/releases/download/v${DOCTL_VERSION}/doctl-${DOCTL_VERSION}-linux-amd64.tar.gz /doctl.tar.gz

RUN tar -xf /doctl.tar.gz && \
  rm /doctl.tar.gz

ENTRYPOINT ["/doctl"]
