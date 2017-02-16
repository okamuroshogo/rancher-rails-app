#!/bin/sh
git clone -b master https://github.com/SMCommunication/mona.git app
cd app
bundle install 
rails db:create
rails db:migrate
rails s -b 0.0.0.0
