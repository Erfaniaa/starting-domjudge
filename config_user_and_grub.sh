#!/bin/bash

sudo useradd -d /nonexistent -U -M -s /bin/false domjudge-run
sudo echo "GRUB_CMDLINE_LINUX_DEFAULT=\"quiet cgroup_enable=memory swapaccount=1\"" >> /etc/default/grub
sudo update-grub
