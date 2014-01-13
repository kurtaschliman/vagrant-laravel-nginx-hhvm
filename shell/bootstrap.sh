#!/bin/sh

if [ ! `which git` ]; then
sudo apt-get install git -y
fi

#make sure r10k is installed
if [ ! `which r10k` ]; then
sudo gem install r10k
fi

cd /vagrant/puppet

sudo r10k puppetfile install