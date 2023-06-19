# Following commands needs to setup on the Control Node:

# To Edit the Hostname

echo "Control-node" | sudo tee /etc/hostname

# Add user and set password
useradd -m -s /bin/bash ansadmin
echo "ansadmin:Welcome123" | chpasswd

# Edit sudoers file to give ansadmin sudo access
echo "ansadmin ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

# Edit sshd_config to allow password authentication
sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config


# Reload sshd service
systemctl reload sshd


# Switch to ansadmin user
su ansadmin

# Generate SSH keys for the user
ssh-keygen -t rsa






# echo "Build-node-node" | sudo tee /etc/hostname


# echo "Jenkins-node" | sudo tee /etc/hostname