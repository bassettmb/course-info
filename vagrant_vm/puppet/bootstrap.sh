#! /usr/bin/env bash

set -eu

# puppet bootstrap script for images without puppet preinstalled
sudo apt-get install puppet -y

# silence warning -- too lazy to actually populate this thing
sudo touch /etc/puppet/hiera.yaml
