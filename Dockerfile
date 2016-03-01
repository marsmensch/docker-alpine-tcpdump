FROM alpine:3.3
MAINTAINER Florian Maier <contact@marsmenschen.com>

ENV REFRESHED_AT 2016-03-01
ENV TCPDUMP_VERSION 4.7.4-r0

RUN apk add --update \
      tcpdump==${TCPDUMP_VERSION} \
      && rm -rf /var/cache/apk/*

VOLUME ["/data"]

ENTRYPOINT ["/usr/sbin/tcpdump"]
CMD ["--help"]
