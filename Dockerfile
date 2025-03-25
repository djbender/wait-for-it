FROM alpine:3.21

LABEL org.opencontainers.image.source=https://github.com/djbender/wait-for-it

RUN apk add --no-cache "bash>=5.2.37-r0"

COPY wait-for-it.sh /usr/local/bin

ENTRYPOINT ["wait-for-it.sh"]

CMD ["--help"]
