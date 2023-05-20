#!/bin/bash

# Add your Host Ip/Name below this line to your HOSTIP/HOSTALIAS environment variable.
HOSTIP=
HOSTALIAS='master'

echo -e "1. Appending Hosts\n"
# Adding Public DNS Resolvers (Change to your desired list of hosts)
sudo echo -e "$HOSTIP \t$HOSTALIAS" | sudo tee -a /etc/hosts

echo -e "2. Installing extra packages\n"
# Extra packages
# List of packages to be installed
Packages=(
  "wget"
  "vim"
  "curl"
  "git"
  "gcc"
  "gcc-c++"
  "make"
  "automake"
  "autoconf"
  "glances"
  "net-tools"
  "bind-utils"
  "tcpdump"
  "iperf3"
  "jq"
)
for package in ${Packages[@]}; do
    sudo dnf install -y $package
done
