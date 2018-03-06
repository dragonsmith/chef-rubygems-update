#
# Cookbook:: rubygems-update
# Recipe:: system
#
# Copyright:: 2018, Kirill Kuznetsov
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

bash 'update system rubygems' do
  environment 'REALLY_GEM_UPDATE_SYSTEM' => 'true'
  code "#{node['rubygems-update']['system']['gem']['bin']} update --system"
  not_if do
    node['rubgems-update']['system']['skip']
  end
  only_if "test -x #{node['rubygems-update']['system']['gem']['bin']} && #{node['rubygems-update']['system']['gem']['bin']} list | /bin/grep -qE '^json '"
end
