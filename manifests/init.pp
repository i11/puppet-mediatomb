class mediatomb (
  $package_name = $mediatomb::params::package_name,
  $package_ensure = $mediatomb::params::package_ensure,
  $config_file = $mediatomb::params::config_file,
  $config_template = $mediatomb::params::config_template,
  $service_name = $mediatomb::params::service_name,
) inherits mediatomb::params {

  include mediatomb::install
  include mediatomb::config
  include mediatomb::service
}
