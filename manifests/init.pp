class mediatomb (
  $package_name = $mediatomb::params::package_name,
  $package_ensure = $mediatomb::params::package_ensure,
  $config_path = $mediatomb::params::config_path,
) inherits mediatomb::params {

  include mediatomb::install
  include mediatomb::config
}
