#!/bin/bash

export TERRAFORM_SWITCHER_VERSION=0.13.1308
export TGSWITCH_VERSION=0.6.0
sudo rm -rvf /usr/bin/terraform 
mkdir -p ~/bin
curl https://raw.githubusercontent.com/warrensbox/terraform-switcher/release/install.sh -o tfswitch-install.sh
bash tfswitch-install.sh -b ~/bin
rm -vf tfswitch-install.sh
curl https://raw.githubusercontent.com/warrensbox/tgswitch/release/install.sh -o tgswitch-install.sh
bash tgswitch-install.sh -b ~/bin
rm -vf tgswitch-install.sh
echo "export PATH=$PATH:~/bin" >> ~/.bashrc
source ~/.bashrc