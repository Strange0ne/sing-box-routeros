FROM ghcr.io/sagernet/sing-box:1.11.0-beta.15 AS main
LABEL maintainer="Dhuran"
RUN set -ex \
    && apk upgrade \
    && apk add iptables iptables-legacy\
    && rm -rf /var/cache/apk/* \
    && rm /usr/sbin/iptables \
    && ln -s /usr/sbin/iptables-legacy /usr/sbin/iptables
ENTRYPOINT ["sing-box"]
