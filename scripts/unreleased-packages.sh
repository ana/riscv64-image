#!/bin/bash

set -e

mkdir -p /tmp/unreleased
cd /tmp/unreleased

# libelf1
wget http://deb.debian.org/debian-ports/pool-riscv64/main/e/elfutils/libelf1_0.170-0.3_riscv64.deb
dpkg -i libelf1_0.170-0.3_riscv64.deb
apt-get -y -f install

# iproute2
apt-get install -y iproute2

rm -rf /tmp/unreleased
apt-get clean
