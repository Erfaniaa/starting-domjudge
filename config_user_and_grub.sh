#!/bin/bash

sudo useradd -d /nonexistent -U -M -s /bin/false domjudge-run
echo "GRUB_CMDLINE_LINUX_DEFAULT=\"cgroup_enable=memory swapaccount=1 systemd.unified_cgroup_hierarchy=0 isolcpus=2\"" | sudo tee -a /etc/default/grub
sudo update-grub
