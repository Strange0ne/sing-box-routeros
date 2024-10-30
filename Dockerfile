FROM --platform=linux/arm64 ghcr.io/sagernet/sing-box:latest AS main
LABEL maintainer="Dhuran"
RUN set -ex \
    && apk upgrade \
    && apk add iptables iptables-legacy\
    && rm -rf /var/cache/apk/* \
    && rm /sbin/iptables \
    && ln -s /sbin/iptables-legacy /sbin/iptables
ENTRYPOINT ["sing-box"]
