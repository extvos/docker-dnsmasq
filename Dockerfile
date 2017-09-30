FROM extvos/alpine
MAINTAINER  "Mingcai SHEN <archsh@gmail.com>"

RUN apk update \
    && apk add dnsmasq dnsmasq-doc

VOLUME /etc/dnsmasq.d/

EXPOSE 53/udp 53/tcp

CMD ["dnsmasq", "-d", "-C", "/etc/dnsmasq.conf"]