#!/bin/bash
# Auth: happylife
# Desc: v2ray installation script
# Plat: ubuntu 18.04+

echo net.core.default_qdisc=fq >> /etc/sysctl.conf
echo net.ipv4.tcp_congestion_control=bbr >> /etc/sysctl.conf
sysctl -p
sysctl net.ipv4.tcp_available_congestion_control
lsmod | grep bbr
reboot
