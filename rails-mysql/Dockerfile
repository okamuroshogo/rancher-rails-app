FROM ruby:2.3.1
ENV LANG C.UTF-8

COPY ./datadase.yml /datadase.yml
COPY ./app.sh /app.sh

RUN apt-get purge git -y && \
    apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git nodejs mysql-client --no-install-recommends && \
    rm -rf /var/lib/apt/lists/* && \
    chmod 775 /app.sh

WORKDIR /
RUN git --version

