FROM alpine:3.20.0
LABEL org.opencontainers.image.authors="expert@slackarea.net"

RUN apk update && apk upgrade && apk add --no-cache \
    bash curl jq openssl --upgrade grep && \
    apk add py3-dns-lexicon && \
    apk add dehydrated --repository=http://dl-cdn.alpinelinux.org/alpine/edge/testing/ && \
    rm -f /var/cache/apk/*

CMD ["sleep", "infinity"]