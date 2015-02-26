#!/usr/bin/env bash

# Install command-line tools using yum.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
yum update

yum install nano

# Install screen
yum install screen

# Install Node.js. Note: this installs `npm` too, using the recommended
# installation method.
yum install node

# Install io.js
# yum install iojs

