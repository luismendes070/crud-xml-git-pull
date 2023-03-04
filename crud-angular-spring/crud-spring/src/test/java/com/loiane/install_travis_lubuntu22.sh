#!/bin/bash

# Add Travis Lubuntu Linux 22 repository
sudo add-apt-repository "deb http://archive.travis-ci.org/ubuntu trusty main"

# Add Travis CI public key to apt-key
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 3B4FE6ACC0B21F32

# Update the package list
sudo apt-get update

# Install Travis Lubuntu Linux 22
sudo apt-get install -y travis-lubuntu

# Verify that Travis Lubuntu Linux 22 is installed
travis-lubuntu version
