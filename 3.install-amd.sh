#!/bin/bash


amdgpu-install --usecase=dkms
sudo dkms status
amdgpu, 4.3-52.el7, 3.10.0-1160.11.1.el7.x86_64, x86_64: installed (original_module exists)
sudo dnf install epel-release
sudo amdgpu-install --usecase=rocm
sudo amdgpu-install --usecase=hiplibsdk,rocm
sudo amdgpu-install --usecase=graphics,rocm
sudo amdgpu-install --usecase=workstation,rocm
sudo amdgpu-install --usecase=rocm,asan
sudo amdgpu-install --list-usecase
sudo amdgpu-install --help
sudo grubby --update-kernel=ALL --args="rd.driver.blacklist=nouveau modprobe.blacklist=nouveau"
sudo sed -i -e 's/GRUB_CMDLINE_LINUX="/GRUB_CMDLINE_LINUX="rd.driver.blacklist=nouveau modprobe.blacklist=nouveau /g' /etc/default/grub
reboot
