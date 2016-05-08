FROM alpine:3.3

MAINTAINER <jpreuss@pavuciny.com>

RUN apk add --no-cache ruby ruby-bigdecimal sqlite-libs libstdc++

ENV MAILCATCHER_VERSION 0.5.12

RUN buildDeps=" \
        ruby-dev \
        make g++ \
        sqlite-dev \
    " && \
    apk add --no-cache $buildDeps && \
    gem install -v $MAILCATCHER_VERSION mailcatcher --no-ri --no-rdoc && \
    apk del $buildDeps

EXPOSE 25 80

CMD ["mailcatcher", "--foreground", "--ip=0.0.0.0", "--smtp-port=25", "--http-port=80"]