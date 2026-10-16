#!/bin/bash

# 1. Create three users with home directories
sudo useradd -m user1
sudo useradd -m user2
sudo useradd -m user3

# 2. Create three groups
sudo groupadd group1
sudo groupadd group2
sudo groupadd group3

# 3. Add each user to their respective group
sudo usermod -aG group1 user1
sudo usermod -aG group2 user2
sudo usermod -aG group3 user3

# 4. Create a shared folder and set permissions
mkdir -p /home/pradip/shared_folder
chmod 755 /home/pradip/shared_folder
sudo chown user1:group1 /home/pradip/shared_folder

echo "Users, groups, and permissions configured successfully!"
