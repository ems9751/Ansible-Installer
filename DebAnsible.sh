#!/bin/bash

echo "Welcome to Ansible setup for Debian"
echo "***********************************"
echo "***********************************"

echo "Do you want to get started?"
read ans
    if [ "$ans" = "yes" ] || [ "$ans" = "YES" ]
     then
    echo "==========================================="
    echo -e "\e[34m Starting Install...\e[0m"
     fi

echo "********************************************"
echo "OpenSSH will be installed along with ansible"
echo "********************************************"
 sudo apt install -y openssh-server
 sudo systemctl enable ssh
 sudo systemctl start ssh

echo "*********************************"
echo "Installing Ansible please standby"
echo "*********************************"
 sudo apt update
 sudo apt install -y ansible

echo "*******************************************************"
echo "Thank you for your Patience"
echo "hosts file configuration located in /etc/ansible/hosts"
echo "ex. host 192.168.100.1 ansible_ssh_pass=xxx ansible_ssh_user=user"
echo "run 'ansible all -m ping -u <user>' to test connections"
echo "********************************************************"

exit 0


  


