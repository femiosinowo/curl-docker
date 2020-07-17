FROM alpine:3.12

RUN apk add --no-cache bash curl gawk sed grep bc coreutils

COPY watch-travels.sh .
RUN chmod +x watch-travels.sh

ENTRYPOINT ["bash", "./watch-travels.sh"]
