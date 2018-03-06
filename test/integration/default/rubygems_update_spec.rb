
system_version = command('/usr/bin/gem --version').stdout.strip
chef_client_version = command('/opt/chef/embedded/bin/gem --version').stdout.strip

describe gem('rubygems-update', '/usr/bin/gem') do
  it { should be_installed }
  its('version') { should eq system_version }
end

describe gem('rubygems-update', :chef) do
  it { should be_installed }
  its('version') { should eq chef_client_version }
end

describe command('/usr/bin/gem outdated') do
  its('stdout') { should_not match(/rubygems-update/) }
end

describe command('/opt/chef/embedded/bin/gem outdated') do
  its('stdout') { should_not match(/rubygems-update/) }
end
