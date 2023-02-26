#!/bin/bash

# Install DBeaver
wget -O - https://dbeaver.io/debs/dbeaver.gpg.key | sudo apt-key add -
echo "deb https://dbeaver.io/debs/dbeaver-ce /" | sudo tee /etc/apt/sources.list.d/dbeaver.list
sudo apt update
sudo apt install dbeaver-ce

# Configure PostgreSQL connection
echo "Enter the host name or IP address for the PostgreSQL server: "
read HOST
echo "Enter the port number for the PostgreSQL server (default is 5432): "
read PORT
echo "Enter the name of the PostgreSQL database: "
read DATABASE
echo "Enter the username for the PostgreSQL database: "
read USERNAME
echo "Enter the password for the PostgreSQL database: "
read -s PASSWORD
echo ""

# Set up connection in DBeaver
echo "Creating PostgreSQL connection in DBeaver..."
./dbeaver/dbeaver &
sleep 5
xdotool key "ctrl+n"
sleep 1
xdotool type "PostgreSQL"
sleep 1
xdotool key "Return"
sleep 1
xdotool type "$HOST"
sleep 1
xdotool key "Tab"
sleep 1
xdotool type "$PORT"
sleep 1
xdotool key "Tab"
sleep 1
xdotool type "$DATABASE"
sleep 1
xdotool key "Tab"
sleep 1
xdotool type "$USERNAME"
sleep 1
xdotool key "Tab"
sleep 1
xdotool type "$PASSWORD"
sleep 1
xdotool key "Return"
sleep 5
xdotool key "ctrl+w"

echo "PostgreSQL connection configured."
# executable Ubuntu 22 permission
# chmod +x configure_dbeaver_postgresql.sh


