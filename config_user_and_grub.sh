#!/bin/bash

sudo useradd -d /nonexistent -U -M -s /bin/false domjudge-run
echo "GRUB_CMDLINE_LINUX_DEFAULT=\"quiet cgroup_enable=memory swapaccount=1\"" | sudo tee -a /etc/default/grub
sudo update-grub
