#!/bin/bash

cp spidriver.service /lib/systemd/system/spidriver.service

cd /etc/systemd/system
ln -s /lib/systemd/system/spidriver.service spidriver.service

#Make systemd take notice of it
systemctl daemon-reload

#Activate a service immediately
systemctl start spidriver.service

#Enable service to be started on bootup
systemctl enable spidriver.service
