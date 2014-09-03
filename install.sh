#!/usr/bin/env bash

# Update just for good measure
sudo apt-get update

# Git Configuration
name="Parker Smith"
email="parker@parkersmith.us"

config="
[user]
	name=$name
	email=$email"

echo "$config" > /home/vagrant/.gitconfig

# Install node.js and npm
sudo apt-get install nodejs -y
sudo apt-get install npm -y

# Install bower
npm install -g bower

# Install http-server
npm install -g http-server

# Install ember-cli
npm install -g ember-cli

# Copy aliases
cp /vagrant/aliases /home/vagrant/.bash_aliases