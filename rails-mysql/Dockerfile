FROM ruby:2.3.1
ENV LANG C.UTF-8

COPY ./app.sh /app.sh
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y nodejs mysql-client --no-install-recommends && \
    rm -rf /var/lib/apt/lists/* && \
    chmod 775 /app.sh

WORKDIR /

