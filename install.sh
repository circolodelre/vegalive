#!/bin/bash

git pull

#curl -Lo dropbox-linux-x86_64.tar.gz https://www.dropbox.com/download?plat=lnx.x86_64

#mkdir -p /opt/dropbox

#tar xzfv dropbox-linux-x86_64.tar.gz --strip 1 -C /opt/dropbox

#/opt/dropbox/dropboxd

cp dropbox /etc/init.d/

chmod +x /etc/init.d/dropbox

echo DROPBOX_USERS="sammy" > /etc/default/dropbox