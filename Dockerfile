FROM alpine:latest

RUN apk add --no-cache libstdc++

RUN wget https://raw.githubusercontent.com/Zhuvikin/md5deep-alpine/master/md5deep -O /usr/local/bin/md5deep \
    && chmod +x /usr/local/bin/md5deep

WORKDIR /opt

ENTRYPOINT ["md5deep"]
