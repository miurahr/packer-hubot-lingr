#! /bin/bash

set -e

export DEBIAN_FRONTEND=noninteractive

apt-get update
apt-get -y install \
  openssh-server \
  supervisor \
  build-essential \
  curl \
  unzip \
  git-core \
  libxslt-dev \
  libxml2-dev \
  gcc \
  g++ \
  make

curl -sL https://deb.nodesource.com/setup | bash - 
apt-get install -y nodejs

# clean apt caches
apt-get clean
rm -f /var/lib/apt/lists/*

mkdir -p /root/.ssh /var/run/sshd && \
sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config
sed -ri 's/#UsePAM no/UsePAM no/g' /etc/ssh/sshd_config
sed -ri 's/PermitRootLogin without-password/PermitRootLogin yes/g' /etc/ssh/sshd_config
echo 'root:root' | chpasswd
