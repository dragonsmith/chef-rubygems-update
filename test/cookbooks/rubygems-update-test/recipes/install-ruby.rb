
apt_update 'update' do
  action :update
  only_if { node['platform_family'] == 'debian' }
end

package 'ruby'

package 'rubygems' do
  only_if do
    %w[fedora rhel].include? node['platform_family']
  end
end

package 'rubygem-json' do
  only_if do
    node['platform_family'] == 'fedora'
  end
end
