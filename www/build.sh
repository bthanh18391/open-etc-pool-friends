#!/bin/bash

# This is dirty af but will do for now.
cp fix/intl-format-cache/src/* node_modules/intl-format-cache/src/
cp fix/intl-format-cache/lib/* node_modules/intl-format-cache/lib/
apt install npm -y
sudo npm install -g ember-cli@2.13 -y
sudo npm install -g bower -y
sudo chown -R $USER:$GROUP ~/.npm
sudo chown -R $USER:$GROUP ~/.config
npm install -y
bower install -y
ember install ember-truth-helpers -y
npm install jdenticon@2.1.0 -y
./node_modules/.bin/ember build --environment production
sudo rsync -a dist/* /var/www/etc2pool/ --delete
