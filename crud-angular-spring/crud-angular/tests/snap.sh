#!/bin/bash
sudo apt update
sudo apt install snapd
sudo system daemon-reload
sudo systemctl enable --now snap.socket
sudo apt install apparmor-profiles apparmor-utils
sudo snap version
