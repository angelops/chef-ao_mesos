default[:zip_mesos][:hdfs_mesos][:version] = '0.1.6'
default[:zip_mesos][:hdfs_mesos][:path] = '/opt/hdfs-mesos/'
default['mesos']['master']['flags']['quorum'] = 1
default['chronos']['jar_source'] = 'https://github.com/mesos/chronos/archive/2.4.0.tar.gz'

