package 'vim-enhanced'

package 'nano'

package 'emacs'

package 'tree' do
 action :install
end

package 'git' do
 action :install
end

package 'ntp'

file '/etc/motd' do
 content "This server is the property of TechnoTraininer
 HOSTNAME : #{node['hostname']}
 IPADDRESS : #{node['ipaddress']}
 CUP : #{node['cpu']['0']['mhz']}
 MEMORY : #{node['memory']['total']}
 "
 action :create
 owner  'root'
 group  'root'
end

service 'ntpd' do
 action [ :enable, :start ]
end

