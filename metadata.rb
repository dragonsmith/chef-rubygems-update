name 'rubygems-update'
maintainer 'Kirill Kuznetsov'
maintainer_email 'agon.smith@gmail.com'
license 'Apache-2.0'
description 'updates rubygems package to the latest'
long_description 'updates rubygems package to the latest'
version '0.1.1'
chef_version '>= 12.7' if respond_to?(:chef_version)

supports 'centos'
supports 'debian'
supports 'fedora'
supports 'redhat'
supports 'ubuntu'

issues_url 'https://github.com/dragonsmith/chef-rubygems-update/issues'
source_url 'https://github.com/dragonsmith/chef-rubygems-update'
