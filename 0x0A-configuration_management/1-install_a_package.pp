#This is a manifest that installs a package in this case flask

exec { 'install flask':
  command => 'pip3 install flask==2.1.0',
  path    => '/usr/bin',
  unless  => 'pip3 list | grep flask',
}
