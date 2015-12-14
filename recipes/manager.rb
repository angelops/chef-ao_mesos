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

include_recipe 'mesos::master'

hdfs_mesos_version = node[:zip_mesos][:hdfs_mesos][:version]
hdfs_mesos_filename = "hdfs-mesos-#{hdfs_mesos_version}.tar.gz"
hdfs_mesos_path = node[:zip_mesos][:hdfs_mesos][:path]

remote_file 'hdfs-mesos' do
  source "https://github.com/mesosphere/hdfs/archive/#{hdfs_mesos_version}.tar.gz"
  path "#{Chef::Config[:file_cache_path]}/#{hdfs_mesos_filename}"
end

directory 'hdfs-mesos-parent' do
  path hdfs_mesos_path
  action :create
end

execute 'untar-hdfs-mesos' do
  cwd Chef::Config[:file_cache_path]
  command "tar xzf ./#{hdfs_mesos_filename} -C #{hdfs_mesos_path} --strip 1"
  creates "#{hdfs_mesos_path}/bin/hdfs-mesos"
end

execute 'build-hdfs-mesos' do
  cwd hdfs_mesos_path
  command "bin/build-hdfs"
  creates "#{hdfs_mesos_path}/build"
end
