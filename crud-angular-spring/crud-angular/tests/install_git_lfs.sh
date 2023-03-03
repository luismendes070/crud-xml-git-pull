#!/bin/bash
curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash
git lfs track "*.java"
git lfs track "*.js"
git lfs track "*.json"
git lfs track "*.ts"
git lfs track "*.xml"
