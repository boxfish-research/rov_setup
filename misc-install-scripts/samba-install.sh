#!/bin/bash
echo "## Install Samba Server"
sudo apt-get install samba samba-common-bin

filename="/etc/samba/smb.conf"
echo "[sambashare]" >> $filename
echo "Comment = Rov/Home shared folder" >> $filename
echo "Path = /home" >> $filename
echo "Browseable = yes" >> $filename
echo "Writeable = Yes" >> $filename
echo "only guest = no" >> $filename
echo "create mask = 0777" >> $filename
echo "directory mask = 0777" >> $filename
echo "Public = yes" >> $filename
echo "Guest ok = yes" >> $filename

echo "Password & restart"
sudo smbpasswd -a rov

sudo /etc/init.d/smbd restart

