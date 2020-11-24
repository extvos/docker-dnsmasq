FROM extvos/alpine:latest
MAINTAINER  "Mingcai SHEN <archsh@gmail.com>"

RUN apk update \
    && apk add --no-cache  dnsmasq dnsmasq-doc

VOLUME /etc/dnsmasq.d/

EXPOSE 53/udp 53/tcp

CMD ["dnsmasq", "-d", "-C", "/etc/dnsmasq.conf"]