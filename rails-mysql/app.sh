#!/bin/sh
echo $REPO_BRANCH
git clone -b $REPO_BRANCH $RAILS_REPO_URL
bundle install 
rails db:create
rails db:migrate
rails s -b 0.0.0.0
