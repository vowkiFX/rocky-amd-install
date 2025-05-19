#!/bin/bash

sudo dnf install https://repo.radeon.com/amdgpu-install/6.4/rhel/9.5/amdgpu-install-6.4.60400-1.el9.noarch.rpm

# CRB/PowerTools must be enabled
sudo crb enable

# Perform a dnf update now
sudo dnf update -y
sudo dnf groupinstall "Development Tools" -y
sudo dnf install kernel-devel gcc make -y
sudo dnf install epel-release -y
sudo dnf install dkms -y


echo "$APP_NAME has been installed. Press Enter to reboot the system..."
read
# Reboot if you had a kernel update
reboot
