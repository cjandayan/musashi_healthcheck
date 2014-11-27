require 'spec_helper'

#Directory of config files
describe file('/root/.ssh/config') do
  it { should be_file }
end

describe file('/home/deploy/.ssh/config') do
  it { should be_file }
end

describe file('/etc/ntp.conf') do
	it { should be_file }
end

describe file('/etc/apt/sources.list.d/docker.list') do
	it { should be_file }
end

describe file('/etc/default/docker') do
	it { should be_file }
end

describe file('/etc/mysql/my.cnf') do
	it { should be_file }
end

describe file('/root/.my.cnf') do
	it { should be_file }
end

describe file('/root/keystonerc') do
	it { should be_file }
end

describe file('/etc/keystone/keystone.conf') do
	it { should be_file }
end

describe file('/etc/keystone/policy.json') do
	it { should be_file }
end

describe file('/etc/nova/nova.conf') do
	it { should be_file }
end

describe file('/etc/nova/policy.json') do
	it { should be_file }
end

describe file('/etc/cinder/cinder.conf') do
	it { should be_file }
end

describe file('/etc/lvm/lvm.conf') do
	it { should be_file }
end

describe file('/root/keystone_data.sh') do
	it { should be_file }
end

describe file('/root/backup_scripts/backup.sh') do
	it { should be_file }
end

#not required for v1.0.0
#describe file('/etc/dmd.cfg') do
#	it { should be_file }
#end

describe file('/etc/init/logstash.conf') do
	it { should be_file }
end

#not available on v1.1.0
#describe file('/etc/init/mariadb.conf') do
#	it { should be_file }
#end

describe file('/etc/redis/redis.conf') do
	it { should be_file }
end

describe file('/etc/init/webapp.conf') do
	it { should be_file }
end

describe file('/etc/apache2/sites-available/dashboard.conf') do
	it { should be_file } 
end

describe file('/etc/init/riemann.conf') do
	it { should be_file }
end

describe file('/etc/init/graphite.conf') do
	it { should be_file }
end

describe file('/etc/nova/nova.conf') do
	it { should be_file }
end

describe file('/etc/nova/policy.json') do
	it { should be_file }
end

describe file('/etc/lvm/lvm.conf') do
	it { should be_file }
end

describe file('/etc/cinder/cinder.conf') do
	it { should be_file }
end

describe file('/etc/diamond/diamond.conf') do
	it { should be_file }
end

describe file('/etc/rsyslog.d/100-musashi.conf') do
	it { should be_file }
end

#not required for now
#describe file('/tmp/secret.xml') do
#	it { should be_file }
#end 
describe file('/etc/diamond/collectors/CPUCollector.conf') do
	it { should be_file }
end
describe file('/etc/diamond/collectors/DiskSpaceCollector.conf') do
	it { should be_file }
end
describe file('/etc/diamond/collectors/DiskUsageCollector.conf') do
	it { should be_file }
end
describe file('/etc/diamond/collectors/LoadAverageCollector.conf') do
	it { should be_file }
end

describe file('/etc/diamond/collectors/MemoryCollector.conf') do
	it { should be_file }
end

describe file('/etc/diamond/collectors/MusashiCPUCollector.conf') do
	it { should be_file }
end

describe file('/etc/diamond/collectors/MusashiDiskSpaceCollector.conf') do
	it { should be_file }
end

describe file('/etc/diamond/collectors/MusashiMemoryCollector.conf') do
	it { should be_file }
end

describe file('/etc/diamond/collectors/MusashiPingCollector.conf') do
	it { should be_file }
end

describe file('/etc/diamond/collectors/MusashiPortCollector.conf') do
	it { should be_file }
end

describe file('/etc/diamond/collectors/SockstatCollector.conf') do
	it { should be_file }
end

describe file('/etc/diamond/collectors/Target_MusashiPingCollector.csv') do
	it { should be_file }
end

describe file('/etc/diamond/collectors/Target_MusashiPortCollector.csv') do
	it { should be_file }
end

describe file('/etc/diamond/collectors/VMStatCollector.conf') do
	it { should be_file }
end

describe file('/etc/glance/glance-api.conf') do
	it { should be_file }
end

describe file('/etc/glance/glance-registry.conf') do
	it { should be_file }
end

describe file('/etc/riemann/musashi_config.clj') do
	it { should be_file }
end