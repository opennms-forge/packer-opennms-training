# Install some tools
yum -y install net-tools wget htop iftop sysstat tcpdump vim git tar unzip

# Install OpenNMS repository
rpm -Uvh http://yum.opennms.org/repofiles/opennms-repo-snapshot-rhel7.noarch.rpm
rpm --import http://yum.opennms.org/OPENNMS-GPG-KEY

# Install OpenNMS without any setup
yum -y install opennms
yum clean all
