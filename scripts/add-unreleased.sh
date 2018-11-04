#!/bin/bash

set -e

echo "deb http://deb.debian.org/debian-ports/ unreleased main" >> /etc/apt/sources.list
apt-get update
apt-get dist-upgrade

