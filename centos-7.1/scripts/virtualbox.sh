VBOX_VERSION=$(cat /home/vagrant/.vbox_version)

# required for VirtualBox Guest Additions
yum install -y bzip2

cd /tmp
mount -o loop /home/vagrant/VBoxGuestAdditions_$VBOX_VERSION.iso /mnt
sh /mnt/VBoxLinuxAdditions.run
/opt/VBoxGuestAdditions-$VBOX_VERSION/init/vboxadd setup
umount /mnt
rm -rf /home/vagrant/VBoxGuestAdditions_*.iso
