class mediatomb::config (
  $uuid = $mediatomb::config::params::uuid,
  $home = $mediatomb::config::params::home,
  $webroot = $mediatomb::config::params::webroot,
  $server_name = $mediatomb::config::params::server_name,
  $ui = $mediatomb::config::params::ui
) inherits mediatomb::config::params {

  file { $mediatomb::config_path:
    ensure  => file,
    require => Package[$mediatomb::package_name],
    content => template("${module_name}/config.xml.erb"),
  }
}
