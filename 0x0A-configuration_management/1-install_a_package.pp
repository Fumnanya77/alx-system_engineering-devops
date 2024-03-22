package { 'flask':
  ensure   => 2.1.0,
  require  => exec['apt-get update'],
  provider => pip3,
}
