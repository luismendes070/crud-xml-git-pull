#!/bin/bash
# osgeo lubuntu 22
# Update package list
sudo apt update

# Install PostgreSQL
sudo apt install postgresql postgresql-contrib

# Start the PostgreSQL service
sudo systemctl start postgresql

# Enable PostgreSQL to start at boot time
sudo systemctl enable postgresql

# Check the status of the PostgreSQL service
sudo systemctl status postgresql

# executable Ubuntu 22 permission
# chmod +x install_postgresql.sh
