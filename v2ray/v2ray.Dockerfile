FROM v2ray/official
MAINTAINER Nathan Lam

RUN rm /etc/v2ray/config.json
COPY config.json /etc/v2ray/config.json
