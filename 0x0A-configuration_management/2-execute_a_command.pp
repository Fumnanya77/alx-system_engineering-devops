exec { 'kill_killmenow_process':
    command     => 'pkill -f killmenow',
    path        => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin/bin:/usr/local/games:/usr/games',
    onlyif      => 'pgrep -f killmenow',
    refreshonly => true,
}
