class mediatomb::config (
  $uuid = $mediatomb::config::params::uuid,
  $home = $mediatomb::config::params::home,
  $webroot = $mediatomb::config::params::webroot,
  $server_name = $mediatomb::config::params::server_name,
  $ui = $mediatomb::config::params::ui
) inherits mediatomb::config::params {

  # Used only for redhat family
  $ifs = split($interfaces, ',')
  $if = $ifs[0]

  file { $mediatomb::config_file:
    ensure  => file,
    require => Package[$mediatomb::package_name],
    content => template($mediatomb::config_template),
    mode    => 444,
  }
}
