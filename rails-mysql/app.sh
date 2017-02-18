#!/bin/sh
export GIT_TRACE_PACKET=1
export GIT_TRACE=1
export GIT_CURL_VERBOSE=1
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);
curl_setopt($ch, CURLOPT_SSLVERSION, 3);
git gc --aggressive
git repack -a -f -d --window=250 --depth=250
git config --global http.postBuffer 24288000
GIT_CURL_VERBOSE=1 git clone -b $REPO_BRANCH $RAILS_REPO_URL app
mkdir -p /app/tmp/sockets
touch /app/tmp/sockets/puma.sock
chmod -R 777 /app/tmp
cp -f /datadase.yml /app/confing/database.yml
cd /app && bundle install 
cd /app && rails db:create
cd /app && rails db:migrate
cd /app && rails s -b 0.0.0.0
