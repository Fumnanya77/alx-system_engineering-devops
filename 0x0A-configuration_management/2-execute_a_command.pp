#This is a manifest that kills that kills a  running process killmenow

exec { 'kill_killmenow_process':
  command => 'pkill -9 killmenow',
  path    => '/usr/bin',
}
