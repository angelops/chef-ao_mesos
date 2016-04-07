#
# Cookbook Name:: zip_mesos
# Recipe:: default
#
# Copyright (C) 2015 Justin Alan Ryan (ZipRealty / Realogy)
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

directory node['mesos']['master']['flags']['work_dir'] do
  action :create
end

include_recipe 'zip_mesos::default'
include_recipe 'mesos::slave'
#include_recipe 'zip_mesos::docker'
include_recipe 'marathon::install'
include_recipe 'hadoop::flume'
include_recipe 'apache_kafka::install'

package 'hive'

