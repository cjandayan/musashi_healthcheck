require 'spec_helper'
require 'rspec/its'

# CHECK PACKAGES - Openstack 
describe file('/var/lib/dpkg/available') do
	it { should contain 'Package: cinder-api' }               # Cinder storage service - API server
	it { should contain 'Version: 1:2014.1.2-0ubuntu1' }
	it { should contain 'Package: cinder-common' }            # Cinder storage service - common files
	it { should contain 'Version: 1:2014.1.2-0ubuntu1' }
	it { should contain 'Package: cinder-scheduler' }         # Cinder storage service - Scheduler server
	it { should contain 'Version: 1:2014.1.2-0ubuntu1' }
	it { should contain 'Package: cinder-volume' }            # Cinder storage service - Volume server
	it { should contain 'Version: 1:2014.1.2-0ubuntu1' }
	it { should contain 'Package: diamond' }                  # System statistics collector for Graphite.
	it { should contain 'Version: 3.4.271' }
  it { should contain 'Package: glance' }                   # OpenStack Image Registry and Delivery Service - Daemons
  it { should contain 'Version: 1:2014.1.2-0ubuntu1.1' }
  it { should contain 'Package: glance-api' }               # OpenStack Image Registry and Delivery Service - API
  it { should contain 'Version: 1:2014.1.2-0ubuntu1.1' }
  it { should contain 'Package: glance-common' }            # OpenStack Image Registry and Delivery Service - Common
  it { should contain 'Version: 1:2014.1.2-0ubuntu1.1' }
  it { should contain 'Package: glance-registry' }          # OpenStack Image Registry and Delivery Service - Registry
  it { should contain 'Version: 1:2014.1.2-0ubuntu1.1' }
  it { should contain 'Package: keystone' }                 # OpenStack identity service - Daemons
  it { should contain 'Version: 1:2014.1.2.1-0ubuntu1.1' }
  it { should contain 'Package: nova-api' }                 # OpenStack Compute - API frontend            
  it { should contain 'Version: 1:2014.1.2-0ubuntu1.1' }
  it { should contain 'Package: nova-cert' }                # OpenStack Compute - certificate management          
  it { should contain 'Version: 1:2014.1.2-0ubuntu1.1' }
  it { should contain 'Package: nova-common' }              # OpenStack Compute - common files          
  it { should contain 'Version: 1:2014.1.2-0ubuntu1.1' }  
  it { should contain 'Package: nova-conductor' }           # OpenStack Compute - conductor service
  it { should contain 'Version: 1:2014.1.2-0ubuntu1.1' }  
  it { should contain 'Package: nova-consoleauth' }         # OpenStack Compute - Console Authenticator
  it { should contain 'Version: 1:2014.1.2-0ubuntu1.1' }
  it { should contain 'Package: nova-novncproxy' }          # OpenStack Compute - NoVNC proxy
  it { should contain 'Version: 1:2014.1.2-0ubuntu1.1' }
  it { should contain 'Package: nova-scheduler' }           # OpenStack Compute - virtual machine scheduler
  it { should contain 'Version: 1:2014.1.2-0ubuntu1.1' }   
  #it { should contain 'Package: openstack-dashboard' }      # django web interface to Openstack            
  #it { should contain 'Version: 1:2014.1.2-0ubuntu1.1' }
  #it { should contain 'Package: python-ceilometerclient' }  # Client library for Openstack ceilometer server.        
  #it { should contain 'Version: 1.0.8-0ubuntu1' }
	it { should contain 'Package: python-cinder' }            # Cinder Python libraries
	it { should contain 'Version: 1:2014.1.2-0ubuntu1' }
  it { should contain 'Package: python-cinderclient' }      # python bindings to the OpenStack Volume API        
  it { should contain 'Version: 1:1.0.8-0ubuntu1' }         
  #it { should contain 'Package: python-django-horizon' }    # Django module providing web based interaction with OpenStack        
  #it { should contain 'Version: 1:2014.1.2-0ubuntu1.1' }    
  it { should contain 'Package: python-glance' }            # OpenStack Image Registry and Delivery Service - Python library        
  it { should contain 'Version: 1:2014.1.2-0ubuntu1.1' }
  it { should contain 'Package: python-glanceclient' }      # Client library for Openstack glance server.        
  it { should contain 'Version: 1:0.12.0-0ubuntu1' }        
  #it { should contain 'Package: python-heatclient' }        # client library and CLI for OpenStack Heat        
  #it { should contain 'Version: 0.2.8-0ubuntu1' }           
  it { should contain 'Package: python-keystone' }          # OpenStack identity service - Python library        
  it { should contain 'Version: 1:2014.1.2.1-0ubuntu1.1' }  
  it { should contain 'Package: python-keystoneclient' }    # Client library for OpenStack Identity API        
  it { should contain 'Version: 1:0.7.1-ubuntu1' }          
  it { should contain 'Package: python-neutronclient' }     # client - Neutron is a virtual network service for Openstack        
  it { should contain 'Version: 1:2.3.4-0ubuntu1' }         
  it { should contain 'Package: python-nova' }              # OpenStack Compute Python libraries        
  it { should contain 'Version: 1:2014.1.2-0ubuntu1.1' }    
  it { should contain 'Package: python-novaclient' }        # client library for OpenStack Compute API        
  it { should contain 'Version: 1:2.17.0-0ubuntu1' }        
  #it { should contain 'Package: python-openstack-auth' }    # A django authentication backend for Openstack
  #it { should contain 'Version: 1.1.3-0ubuntu3' }           
  it { should contain 'Package: python-oslo.config' }       # Common code for Openstack Projects (configuration API)        
  it { should contain 'Version: 1:1.2.1-0ubuntu2' }         
  it { should contain 'Package: python-swiftclient' }       # Client library for Openstack Swift API.        
  it { should contain 'Version: 1:2.0.3-0ubuntu1' }         
  #it { should contain 'Package: python-troveclient' }       # Client library for Openstack Trove API.        
  #it { should contain 'Version: 1:1.0.3-0ubuntu3' }
end

# CHECK PACKAGES - MySQL
describe file('/var/lib/dpkg/available') do
  it { should contain 'Package: libdbd-mysql-perl' }        # Perl5 database interface to the MySQL database        
  it { should contain 'Version: 4.025-1' }
  #it { should contain 'Package: libmysqlclient18:amd64' }   # MySQL database client library        
  #it { should contain 'Version: 5.5.38-0ubuntu0.14.04.1' }
  it { should contain 'Package: mysql-client-5.5' }         # MySQL database client binaries
  it { should contain 'Version: 5.5.38-0ubuntu0.14.04.1' }         
  it { should contain 'Package: mysql-client-core-5.5' }    # MySQL database core client binaries
  it { should contain 'Version: 5.5.38-0ubuntu0.14.04.1' }
  it { should contain 'Package: mysql-common' }             # MySQL database common files, e.g. /etc/mysql/my.cnf          
  it { should contain 'Version: 5.5.38-0ubuntu0.14.04.1' }
  it { should contain 'Package: mysql-server' }             # MySQL database server (metapackage depending on the latest version)
  it { should contain 'Version: 5.5.38-0ubuntu0.14.04.1' }
  it { should contain 'Package: mysql-server-5.5' }         # MySQL database server binaries and system database setup
  it { should contain 'Version: 5.5.38-0ubuntu0.14.04.1' }
  it { should contain 'Package: mysql-server-core-5.5' }    # MySQL database server binaries
  it { should contain 'Version: 5.5.38-0ubuntu0.14.04.1' }
  it { should contain 'Package: python-mysqldb' }           # Python interface to MySQL
  it { should contain 'Version: 1.2.3-2ubuntu1' }
end

# CHECK PACKAGES - Docker
describe file('/var/lib/dpkg/available') do
  it { should contain 'Package: lxc-docker' }               # Linux container runtime
  it { should contain 'Version: 1.2.0' }
  it { should contain 'Package: lxc-docker-1.2.0' }         # Linux container runtime
  it { should contain 'Version: 1.2.0' }
end

# CHECK PACKAGES - Required and Essentials
describe file('/var/lib/dpkg/available') do
	it { should contain 'Package: util-linux' }          # Miscellaneous system utilities
	it { should contain 'Version: 2.20.1-5.1ubuntu20' }
	it { should contain 'Package: bash' }                # GNU Bourne Again SHell
	it { should contain 'Version: 4.3-7ubuntu1' }
	it { should contain 'Package: libc-bin' }            # Embedded GNU C Library: Binaries
	it { should contain 'Version: 2.19-0ubuntu6' }
  it { should contain 'Package: dpkg' }                # Dpkg perl modules 
	it { should contain 'Version: 1.17.5ubuntu5' }
	it { should contain 'Package: gzip' }                # GNU compression utilities
	it { should contain 'Version: 1.6-3ubuntu1' }
	it { should contain 'Package: e2fsprogs' }           # ext2/ext3/ext4 file system utilities
	it { should contain 'Version: 1.42.9-3ubuntu1' }
	it { should contain 'Package: findutils' }           # utilities for finding files--find, xargs
	it { should contain 'Version: 4.4.2-7' }
	it { should contain 'Package: hostname' }
	it { should contain 'Version: 3.15ubuntu1' }
	it { should contain 'Package: grep' }
	it { should contain 'Version: 2.16-1' }
	it { should contain 'Package: base-passwd' }
	it { should contain 'Version: 3.5.33' }
	it { should contain 'Package: sed' }
	it { should contain 'Version: 4.2.2-4ubuntu1' }
	it { should contain 'Package: mount' }
	it { should contain 'Version: 2.20.1-5.1ubuntu20' }
	it { should contain 'Package: base-files' }
	it { should contain 'Version: 7.2ubuntu5' }
	it { should contain 'Package: tar' }
	it { should contain 'Version: 1.27.1-1' }
	it { should contain 'Package: diffutils' }
	it { should contain 'Version: 1:3.3-1' }
	it { should contain 'Package: perl-base' }
	it { should contain 'Version: 5.18.2-2ubuntu1' }
	it { should contain 'Package: ncurses-bin' }
	it { should contain 'Version: 5.9+20140118-1ubuntu1' }
	it { should contain 'Package: bsdutils' }
	it { should contain 'Version: 1:2.20.1-5.1ubuntu20' }
	it { should contain 'Package: ncurses-base' }
	it { should contain 'Version: 5.9+20140118-1ubuntu1' }
	it { should contain 'Package: login' }
	it { should contain 'Version: 1:4.1.5.1-1ubuntu9' }
	it { should contain 'Package: debianutils' }
	it { should contain 'Version: 4.4' }
	it { should contain 'Package: coreutils' }
	it { should contain 'Version: 8.21-1ubuntu5' }
	it { should contain 'Package: dash' }
	it { should contain 'Version: 0.5.7-4ubuntu1' }
end

# CHECK PACKAGES - Required
describe file('/var/lib/dpkg/available') do
	it { should contain 'Package: libcap2' }
	it { should contain 'Version: 1:2.24-0ubuntu2'}
	it { should contain 'Package: libtext-charwidth-perl' }
	it { should contain 'Version: 0.04-7build3' }
	it { should contain 'Package: cpio' }
	it { should contain 'Version: 2.11+dfsg-1ubuntu1' }
  it { should contain 'Package: libpng12-0' }
	it { should contain 'Version: 1.2.50-1ubuntu2' }
	it { should contain 'Package: libc6' }
	it { should contain 'Version: 2.19-0ubuntu6.3' }
	it { should contain 'Package: libaudit-common' }
	it { should contain 'Version: 1:2.3.2-2ubuntu1' }
	it { should contain 'Package: libselinux1' }
	it { should contain 'Version: 2.2.2-1' }
	it { should contain 'Package: libnih-dbus1' }
	it { should contain 'Version: 1.0.3-4ubuntu25' }
	it { should contain 'Package: libjson0' }
	it { should contain 'Version: 0.11-3ubuntu1' }
	it { should contain 'Package: multiarch-support' }
	it { should contain 'Version: 2.19-0ubuntu6' }
	it { should contain 'Package: sysvinit-utils' }
	it { should contain 'Version: 2.88dsf-41ubuntu6' }
	it { should contain 'Package: libtinfo5' }
	it { should contain 'Version: 5.9+20140118-1ubuntu1' }
	it { should contain 'Package: libbz2-1.0' }
	it { should contain 'Version: 1.0.6-5' }
	it { should contain 'Package: busybox-initramfs' }
	it { should contain 'Version: 1:1.21.0-1ubuntu1' }
	it { should contain 'Package: liblocale-gettext-perl' }
	it { should contain 'Version: 1.05-7build3' }	
	it { should contain 'Package: libncursesw5' }
	it { should contain 'Version: 5.9+20140118-1ubuntu1' }
	it { should contain 'Package: libpcre3' }
	it { should contain 'Version: 1:8.31-2ubuntu2' }
	it { should contain 'Package: insserv' }
	it { should contain 'Version: 1.14.0-5ubuntu2' }
	it { should contain 'Package: libdb5.3' }
	it { should contain 'Version: 5.3.28-3ubuntu3' }
	it { should contain 'Package: libaudit1' }
	it { should contain 'Version: 1:2.3.2-2ubuntu1' }
	it { should contain 'Package: libnih1' }
	it { should contain 'Version: 1.0.3-4ubuntu25' }
	it { should contain 'Package: liblzma5' }
	it { should contain 'Version: 5.1.1alpha+20120614-2ubuntu2' }
	it { should contain 'Package: xz-utils' }
	it { should contain 'Version: 5.1.1alpha+20120614-2ubuntu2' }
	it { should contain 'Package: libpam-modules-bin' }
	it { should contain 'Version: 1.1.8-1ubuntu2' }
	it { should contain 'Package: libsemanage-common' }
	it { should contain 'Version: 2.2-1' }
	it { should contain 'Package: libss2' }
	it { should contain 'Version: 1.42.9-3ubuntu1' }
	it { should contain 'Package: libblkid1' }
	it { should contain 'Version: 2.20.1-5.1ubuntu20' }
	it { should contain 'Package: initscripts' }
	it { should contain 'Version: 2.88dsf-41ubuntu6' }
	it { should contain 'Package: libslang2' }
	it { should contain 'Version: 2.2.4-15ubuntu1' }
	it { should contain 'Package: libpam-runtime' }
	it { should contain 'Version: 1.1.8-1ubuntu2' }
	it { should contain 'Package: libacl1' }
	it { should contain 'Version: 2.2.52-1' }
	it { should contain 'Package: passwd' }
	it { should contain 'Version: 1:4.1.5.1-1ubuntu9' }
	it { should contain 'Package: ureadahead' }
	it { should contain 'Version: 0.100.0-16' }
	it { should contain 'Package: upstart' }
	it { should contain 'Version: 1.12.1-0ubuntu4' }
	it { should contain 'Package: plymouth' }
	it { should contain 'Version: 0.8.8-0ubuntu17' }
	it { should contain 'Package: gcc-4.8-base' }
	it { should contain 'Version: 4.8.2-19ubuntu1' }
	it { should contain 'Package: mawk' }
	it { should contain 'Version: 1.3.3-17ubuntu2' }
	it { should contain 'Package: libcomerr2' }
	it { should contain 'Version: 1.42.9-3ubuntu1' }
	it { should contain 'Package: e2fslibs' }
	it { should contain 'Version: 1.42.9-3ubuntu1' }
	it { should contain 'Package: klibc-utils' }
	it { should contain 'Version: 2.0.3-0ubuntu1' }
	it { should contain 'Package: libattr1' }
	it { should contain 'Version: 1:2.4.47-1ubuntu1' }
	it { should contain 'Package: gcc-4.9-base' }
	it { should contain 'Version: 4.9-20140406-0ubuntu1' }
	it { should contain 'Package: libplymouth2' }
	it { should contain 'Version: 0.8.8-0ubuntu17' }
	it { should contain 'Package: libncurses5' }
	it { should contain 'Version: 5.9+20140118-1ubuntu1' }
	it { should contain 'Package: libtext-iconv-perl' }
	it { should contain 'Version: 1.7-5build2' }
	it { should contain 'Package: libklibc' }
	it { should contain 'Version: 2.0.3-0ubuntu1' }
	it { should contain 'Package: libdebconfclient0' }
	it { should contain 'Version: 0.187ubuntu1' }
	it { should contain 'Package: libgcc1' }
	it { should contain 'Version: 1:4.9-20140406-0ubuntu1' }
	it { should contain 'Package: adduser' }
	it { should contain 'Version: 3.113+nmu3ubuntu3' }
	it { should contain 'Package: zlib1g' }
	it { should contain 'Version: 1:1.2.8.dfsg-1ubuntu1' }
	it { should contain 'Package: libmount1' }
	it { should contain 'Version: 2.20.1-5.1ubuntu20' }
	it { should contain 'Package: libkmod2' }
	it { should contain 'Version: 15-0ubuntu6' }
	it { should contain 'Package: kmod' }
	it { should contain 'Version: 15-0ubuntu6' }
	it { should contain 'Package: mountall' }
	it { should contain 'Version: 2.53' }
	it { should contain 'Package: libsemanage1' }
	it { should contain 'Version: 2.2-1' }
	it { should contain 'Package: tzdata' }
	it { should contain 'Version: 2014c-0ubuntu0.14.04' } 
	it { should contain 'Package: libpam-modules' }
	it { should contain 'Version: 1.1.8-1ubuntu2' }
	it { should contain 'Package: libsepol1' }
	it { should contain 'Version: 2.2-1' }
	it { should contain 'Package: libdrm2' }
	it { should contain 'Version: 2.4.52-1' }
	it { should contain 'Package: libjson-c2' }
	it { should contain 'Version: 0.11-3ubuntu1' }
	it { should contain 'Package: libprocps3' }
	it { should contain 'Version: 1:3.3.9-1ubuntu2' }
	it { should contain 'Package: sysv-rc' }
	it { should contain 'Version: 2.88dsf-41ubuntu6' }
	it { should contain 'Package: sensible-utils' }
	it { should contain 'Version: 0.0.9' }
	it { should contain 'Package: libpam0g' }
	it { should contain 'Version: 1.1.8-1ubuntu2' }
	it { should contain 'Package: procps' }
	it { should contain 'Version: 1:3.3.9-1ubuntu2' }
	it { should contain 'Package: lsb-base' }
	it { should contain 'Version: 4.1+Debian11ubuntu6' }
	it { should contain 'Package: libuuid1' }
	it { should contain 'Version: 2.20.1-5.1ubuntu20' }
	it { should contain 'Package: module-init-tools' }
	it { should contain 'Version: 15-0ubuntu6' }
	it { should contain 'Package: libdbus-1-3' }
	it { should contain 'Version: 1.6.18-0ubuntu4' }
	it { should contain 'Package: makedev' }
	it { should contain 'Version: 2.3.1-93ubuntu1' }
	it { should contain 'Package: iproute2' }
	it { should contain 'Version: 3.12.0-2' }
	it { should contain 'Package: debconf' }
	it { should contain 'Version: 1.5.51ubuntu2' }
	it { should contain 'Package: libustr-1.0-1' }
	it { should contain 'Version: 1.0.4-3ubuntu2' }
	it { should contain 'Package: libtext-wrapi18n-perl' }
	it { should contain 'Version: 0.06-7' }
end

# CHECK PACKAGES - Important
describe file('/var/lib/dpkg/available') do
	it { should contain 'Package: gpgv' }
	it { should contain 'Version: 1.4.16-1ubuntu2'}
	it { should contain 'Package: libssl1.0.0' }
	it { should contain 'Version: 1.0.1f-1ubuntu2' }
	it { should contain 'Package: man-db' }
	it { should contain 'Version: 2.6.7.1-1' }
  it { should contain 'Package: libgdbm3' }
	it { should contain 'Version: 1.8.3-12build1' }
	it { should contain 'Package: isc-dhcp-common' }
	it { should contain 'Version: 4.2.4-7ubuntu12' }
	it { should contain 'Package: libpopt0' }
	it { should contain 'Version: 1.16-8ubuntu1' }
	it { should contain 'Package: libusb-0.1-4' }
	it { should contain 'Version: 2:0.1.12-23.3ubuntu1' }
	it { should contain 'Package: install-info' }
	it { should contain 'Version: 5.2.0.dfsg.1-2' }
	it { should contain 'Package: vim-common' }
	it { should contain 'Version: 2:7.4.052-1ubuntu3' }
	it { should contain 'Package: apt' }
	it { should contain 'Version: 1.0.1ubuntu2' }
	it { should contain 'Package: netbase' }
	it { should contain 'Version: 5.2' }
	it { should contain 'Package: whiptail' }
	it { should contain 'Version: 0.52.15-2ubuntu5' }
	it { should contain 'Package: dmidecode' }
	it { should contain 'Version: 2.12-2' }
	it { should contain 'Package: libudev1' }
	it { should contain 'Version: 204-5ubuntu20' }
	it { should contain 'Package: ifupdown' }
	it { should contain 'Version: 0.7.47.2ubuntu4' }	
	it { should contain 'Package: libapt-pkg4.12' }
	it { should contain 'Version: 1.0.1ubuntu2' }
	it { should contain 'Package: libept1.4.12' }
	it { should contain 'Version: 1.0.12' }
	it { should contain 'Package: netcat-openbsd' }
	it { should contain 'Version: 1.105-7ubuntu1' }
	it { should contain 'Package: libapt-inst1.5' }
	it { should contain 'Version: 1.0.1ubuntu2' }
	it { should contain 'Package: locales' }
	it { should contain 'Version: 2.13+git20120306-12' }
	it { should contain 'Package: manpages' }
	it { should contain 'Version: 3.54-1ubuntu1' }
	it { should contain 'Package: tasksel' }
	it { should contain 'Version: 2.88ubuntu15' }
	it { should contain 'Package: libreadline6' }
	it { should contain 'Version: 6.3-4ubuntu2' }
	it { should contain 'Package: tasksel-data' }
	it { should contain 'Version: 2.88ubuntu15' }
	it { should contain 'Package: libboost-iostreams1.54.0' }
	it { should contain 'Version: 1.54.0-4ubuntu3' }
	it { should contain 'Package: logrotate' }
	it { should contain 'Version: 3.8.7-1ubuntu1' }
	it { should contain 'Package: wget' }
	it { should contain 'Version: 1.15-1ubuntu1' }
	it { should contain 'Package: groff-base' }
	it { should contain 'Version: 1.22.2-5' }
	it { should contain 'Package: gnupg' }
	it { should contain 'Version: 1.4.16-1ubuntu2' }
	it { should contain 'Package: libnewt0.52' }
	it { should contain 'Version: 0.52.15-2ubuntu5' }
	it { should contain 'Package: net-tools' }
	it { should contain 'Version: 1.60-25ubuntu2' }
	it { should contain 'Package: debconf-i18n' }
	it { should contain 'Version: 1.5.51ubuntu2' }
	it { should contain 'Package: libxtables10' }
	it { should contain 'Version: 1.4.21-1ubuntu1' }
	it { should contain 'Package: libpipeline1' }
	it { should contain 'Version: 1.3.0-1' }
	it { should contain 'Package: libcwidget3' }
	it { should contain 'Version: 0.5.16-3.5ubuntu1' }
	it { should contain 'Package: bsdmainutils' }
	it { should contain 'Version: 9.0.5ubuntu1' }
	it { should contain 'Package: aptitude' }
	it { should contain 'Version: 0.6.8.2-1ubuntu4' }
	it { should contain 'Package: ubuntu-keyring' }
	it { should contain 'Version: 2012.05.19' }
	it { should contain 'Package: info' }
	it { should contain 'Version: 5.2.0.dfsg.1-2' }
	it { should contain 'Package: iputils-ping' }
	it { should contain 'Version: 3:20121221-4ubuntu1' }
	it { should contain 'Package: aptitude-common' }
	it { should contain 'Version: 0.6.8.2-1ubuntu4' }
	it { should contain 'Package: cron' }
	it { should contain 'Version: 3.0pl1-124ubuntu2' }
	it { should contain 'Package: nano' }
	it { should contain 'Version: 2.2.6-1ubuntu1' }
	it { should contain 'Package: apt-utils' }
	it { should contain 'Version: 1.0.1ubuntu2' }
	it { should contain 'Package: udev' }
	it { should contain 'Version: 204-5ubuntu20' }
	it { should contain 'Package: iptables' }
	it { should contain 'Version: 1.4.21-1ubuntu1' }
	it { should contain 'Package: rsyslog' }
	it { should contain 'Version: 7.4.4-1ubuntu2' }
	it { should contain 'Package: libstdc++6' }
	it { should contain 'Version: 4.8.2-19ubuntu1' }
	it { should contain 'Package: isc-dhcp-client' }
	it { should contain 'Version: 4.2.4-7ubuntu12' }
	it { should contain 'Package: vim-tiny' }
	it { should contain 'Version: 2:7.4.052-1ubuntu3' }
	it { should contain 'Package: readline-common' }
	it { should contain 'Version: 6.3-4ubuntu2' }
end

# CHECK SERVICES
describe package('apache2')  do
  it { should be_installed }
end

describe service('apache2') do
  it { should be_running   }
end

describe package('mysql-server') do
  it { should be_installed }
end

describe service('mysql') do
  it { should be_enabled   }
  it { should be_running   }
end

describe package('keystone') do
  it { should be_installed }
end

describe package('keystone') do
  # it { should be_enabled   }
  # it { should be_running   }
end

describe service('glance-api') do
  it { should be_enabled   }
  it { should be_running   }
end

describe package('rabbitmq-server') do
  it { should be_installed }
end

describe package('rabbitmq-server') do
  # it { should be_enabled   }
  # it { should be_running   }
end

describe package('cinder-scheduler') do
  it { should be_installed }
end

describe package('cinder-scheduler') do
  it { should be_enabled   }
  # it { should be_running   }
end

describe service('cinder-volume') do
  it { should be_enabled   }
  it { should be_running   }
end

describe service('nova-api') do
  it { should be_enabled   }
  it { should be_running   }
end

describe service('nova-scheduler') do
  it { should be_enabled   }
  it { should be_running   }
end

describe service('nova-conductor') do
  it { should be_enabled   }
  it { should be_running   }
end

describe service('graphite') do
  it { should be_running   }
end

describe service('riemann') do
  it { should be_running   }
end

describe service('logstash') do
  it { should be_running   }
end

describe service('dashboard') do
  it { should be_running   }
end

#describe package('mariadb') do
#  it { should be_installed }
#end

# CHECK DEFAULT PORTS
describe port (3306) do
  it { should be_listening.with('tcp') }
end

describe port (35357) do
  it { should be_listening.with('tcp') }
end

describe port (8774) do
  it { should be_listening.with('tcp') }
end

describe port (8776) do
  it { should be_listening.with('tcp') }
end

describe port (8773) do
  it { should be_listening.with('tcp') }
end

describe port (8775) do
  it { should be_listening.with('tcp') }
end

describe port (5000) do
  it { should be_listening.with('tcp') }
end

describe port (6080) do
  it { should be_listening.with('tcp') }
end

describe port (9292) do
  it { should be_listening.with('tcp') }
end

describe port (9191) do
  it { should be_listening.with('tcp') }
end

describe port (80) do #apache2
  it { should be_listening.with('tcp6') }
end

describe port (81) do #dashboard via docker
  it { should be_listening.with('tcp6') }
end

describe port (514) do #logstash
  it { should be_listening.with('tcp6') }
end

describe port (3307) do #mariadb
  it { should be_listening.with('tcp6') }
end

describe port (5555) do #riemann
  it { should be_listening.with('tcp6') }
end

describe port (2003) do #graphite
  it { should be_listening.with('tcp6') }
end

describe port (3260) do #iSCI
  it { should be_listening.with('tcp') }
end

describe port (4369) do #rabbitmq
  it { should be_listening.with('tcp6') }
end

describe port (11211) do #memcached
  it { should be_listening.with('tcp') }
end

describe port (6379) do #redis-server
  it { should be_listening.with('tcp') }
end