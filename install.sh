#!/bin/bash

apt update

useradd -m -p <encryptedPassword> -s /bin/bash <user>

curl -Lo dropbox-linux-x86_64.tar.gz https://www.dropbox.com/download?plat=lnx.x86_64

mkdir -p /opt/dropbox

tar xzfv dropbox-linux-x86_64.tar.gz --strip 1 -C /opt/dropbox

cp dropbox /etc/init.d/

chmod +x /etc/init.d/dropbox

echo DROPBOX_USERS=\"root\" > /etc/default/dropbox

update-rc.d dropbox defaults

/opt/dropbox/dropboxd

service dropbox start
