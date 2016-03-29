name             'zip_mesos'
maintainer       'Justin Alan Ryan (ZipRealty / Realogy)'
maintainer_email 'juryan@ziprealty.com'
license          'Apache 2.0'
description      'Installs/Configures zip_mesos'
long_description 'Installs/Configures zip_mesos'
version          '0.4.1'

depends 'mesos', '~> 3.5.1'
depends 'zookeeper'
depends 'marathon'
depends 'chronos'
depends 'docker', '~> 2.0'
depends 'hadoop'
depends 'apache_kafka'

