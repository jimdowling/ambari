name             'ambari'
maintainer       'JULIEN PELLET'
maintainer_email 'chef@julienpellet.com'
license          'Apache 2.0'
description      'Installs/Configures ambari'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.11'

recipe           "ambari::server", "Installs an Ambari Server"
recipe           "ambari::agent", "Installs an Ambari agent"
recipe           "ambari::blueprints", "Installs an Ambari blueprint"

supports 'redhat', ">= 5.0"
supports 'centos', ">= 5.0"
supports 'amazon', ">= 5.0"
supports 'scientific', ">= 5.0"
supports 'suse', ">= 11.0"
supports 'ubuntu', ">= 12.0"
depends 'apt'
depends 'kagent'
depends 'ntp'

attribute "ambari/admin_password",
:display_name => "Ambari server admin password (username: admin)",
:type => 'string',
:default => "admin"

