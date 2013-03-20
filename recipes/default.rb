#
# Cookbook Name:: tmpreaper
# Recipe:: default
#
# Copyright 2012, CustomInk
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at

#     http://www.apache.org/licenses/LICENSE-2.0

# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

package 'tmpreaper'

template '/etc/tmpreaper.conf' do
  owner 'root'
  group 'root'
  mode  '0644'

  variables(
    :show_warning => node['tmpreaper']['show_warning'],
    :protect_extra => node['tmpreaper']['protect_extra'],
    :dirs => [node['tmpreaper']['dirs']].flatten.join(' '),
    :delay => node['tmpreaper']['delay'],
    :additional_options => node['tmpreaper']['additional_options'],
    :tmptime => node['tmpreaper']['tmptime']
  )
end
