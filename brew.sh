#!/usr/bin/env bash

# Install command-line tools using yum.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
yum -y update

yum install -y nano

# Install screen
yum install -y screen

# Install Node.js. Note: this installs `npm` too, using the recommended
# installation method. https://github.com/joyent/node/wiki/installing-node.js-via-package-manager#enterprise-linux-and-fedora
curl -sL https://rpm.nodesource.com/setup | bash -
yum install -y node

# Install io.js
# yum install iojs

