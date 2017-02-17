#!/bin/sh
git config http.postBuffer 524288000
git config --global http.postBuffer 524288000
git clone -b $REPO_BRANCH $RAILS_REPO_URL
mkdir -p /app/tmp/sockets
touch /app/tmp/sockets/puma.sock
chmod -R 777 /app/tmp
cd app && bundle install 
cd app && rails db:create
cd app && rails db:migrate
cd app && rails s -b 0.0.0.0
