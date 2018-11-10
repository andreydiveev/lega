#!/bin/bash

mkdir -p /var/cache/swap/ && \
    dd if=/dev/zero of=/var/cache/swap/swapfile bs=1M count=4096 && \
    mkswap /var/cache/swap/swapfile && \
    chmod 600 /var/cache/swap/swapfile && \
    swapon /var/cache/swap/swapfile && \
    echo "/var/cache/swap/swapfile    none    swap    sw    0   0" >> /etc/fstab

