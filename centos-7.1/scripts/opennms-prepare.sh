# Install some tools
yum -y install net-tools wget htop iftop sysstat tcpdump vim git tar unzip psmisc

# Additional packages
yum -y install rrdtool jrrd jrrd2
yum -y install net-snmp-utils net-snmp
yum -y install bind-utils mailx

# Install OpenNMS repository
rpm -Uvh http://yum.opennms.org/repofiles/opennms-repo-stable-rhel7.noarch.rpm
rpm --import http://yum.opennms.org/OPENNMS-GPG-KEY

# Install OpenNMS without any setup
yum -y install opennms
yum clean all
