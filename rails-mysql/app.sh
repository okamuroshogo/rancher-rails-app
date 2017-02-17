#!/bin/sh
echo $REPO_BRANCH
git clone -b $REPO_BRANCH $RAILS_REPO_URL
mkdir -p /app/tmp/sockets
touch /app/tmp/sockets/puma.sock
chmod -R 777 /app/tmp
cd app
bundle install 
rails db:create
rails db:migrate
rails s -b 0.0.0.0
