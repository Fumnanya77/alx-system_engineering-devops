#This is a manifest that installs a package in this case flask

exec { 'apt-update':
  command => '/usr/bin/apt-get update',
  path    => '/usr/bin'
}

package { 'flask':
  require  => Exec['apt-update'],
  ensure   => '2.1.0',
  provider => 'pip',
}

#exec { 'install flask':
#  command => 'pip3 install flask==2.1.0',
#  path    => '/usr/bin',
#}
