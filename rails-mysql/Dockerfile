FROM ruby:2.3.1
ENV LANG C.UTF-8

RUN apt-get update && \
    apt-get install -y nodejs mysql-client --no-install-recommends && \
    rm -rf /var/lib/apt/lists/* && \
    mkdir -p /app && \
    mkdir -p /app/tmp/sockets && \
    touch puma.sock && \
    chmod -R 777 /app/tmp

WORKDIR /app
COPY ./app.sh

