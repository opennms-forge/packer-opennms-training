# Install some tools
yum -y install net-tools wget sysstat tcpdump vim git tar unzip psmisc

wget --no-cookies \
     --no-check-certificate \
     --header \
              "Cookie: oraclelicense=accept-securebackup-cookie" \
              "http://download.oracle.com/otn-pub/java/jdk/8u102-b14/jdk-8u102-linux-x64.rpm" \
     -O /tmp/jdk-8-linux-x64.rpm
yum -y localinstall /tmp/jdk-8-linux-x64.rpm

# Additional packages
yum -y install net-snmp-utils net-snmp
yum -y install bind-utils mailx

# Install OpenNMS Meridian repository
echo -e "[meridian]\nname=Meridian for Red Hat Enterprise Linux and CentOS\nbaseurl=https://USER:PASS@meridian.opennms.com/packages/stable/rhel7\ngpgcheck=1\ngpgkey=http://yum.opennms.org/OPENNMS-GPG-KEY\n" > /etc/yum.repos.d/meridian.repo

rpm --import http://yum.opennms.org/OPENNMS-GPG-KEY

# Install OpenNMS without any setup
yum -y install meridian
yum clean all
