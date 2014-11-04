class mediatomb::service {

  service { $mediatomb::service_name:
    ensure => running,
    hasstatus => true,
    hasrestart => true,
    enable => true,
    require => Class['mediatomb::config'],
    subscribe => File[$mediatomb::config_file],
  }

}
