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

template '/etc/motd' do
  source 'motd.erb'
  variables(
    :name => 'Varadharajan'
  )
  action :create
end

service 'ntpd' do
 action [ :enable, :start ]
end

