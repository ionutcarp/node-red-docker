#!/bin/sh

# Generating hostkey 
ssh-keygen -f /usr/src/node-red/ssh_host_rsa_key -N '' -t rsa

# starting sshd process
echo "Starting SSHD"
echo "Docker!" | sudo /usr/sbin/sshd -f /usr/src/node-red/sshd_config
#/usr/sbin/sshd
#service sshd start

# Staring the Node-Red stack
echo "Starting Node-Red"
npm start --cache /home/site/wwwroot/data/.npm -- --userDir /home/site/wwwroot/data