default[:zip_mesos][:hdfs_mesos][:version] = '0.1.6'
default[:zip_mesos][:hdfs_mesos][:path] = '/opt/hdfs-mesos/'
default['mesos']['master']['flags']['quorum'] = 1
force_default['mesos']['slave']['flags']['work_dir'] = '/var/mesos'
force_default['mesos']['master']['flags']['work_dir'] = '/var/mesos'
default['mesos']['version'] = '0.28.2'
default['chronos']['jar_source'] = 'https://github.com/mesos/chronos/archive/2.4.0.tar.gz'
default['chronos']['zookeeper_server_list'] = [ 'zk01', 'zk02', 'zk03' ]
default[:zip_mesos][:logrotate_path] = '/var/log/mesos'
default[:zip_mesos][:logrotate_days] = 30
default[:zip_mesos][:logrotate_config_filename] = '/etc/logrotate.d/mesos'
default[:zip_mesos][:logrotate_config_template_filename] = 'logrotate.mesos.erb'

