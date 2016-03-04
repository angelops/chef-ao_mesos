default[:zip_mesos][:hdfs_mesos][:version] = '0.1.6'
default[:zip_mesos][:hdfs_mesos][:path] = '/opt/hdfs-mesos/'
default['mesos']['master']['flags']['quorum'] = 1
default['chronos']['jar_source'] = 'https://github.com/mesos/chronos/archive/2.4.0.tar.gz'
default['chronos']['zookeeper_server_list'] = [ 'zk01', 'zk02', 'zk03' ]

