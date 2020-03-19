#!/bin/bash

wget ftp://192.99.11.204/openssh-$1p1.tar.gz
tar -zxvf openssh-$1p1.tar.gz
cd openssh-8.2p1
./configure --prefix=/usr --sysconfdir=/etc/ssh --with-pam --with-zlib --with-md5-passwords --with-tcp-wrappers
make && make install

chmod 600 /etc/ssh/ssh_host_rsa_key
chmod 600 /etc/ssh/ssh_host_ecdsa_key
chmod 600 /etc/ssh/ssh_host_ed25519_key