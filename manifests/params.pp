class mediatomb::params {
  case $::osfamily {
    debian: {
      $package_name = 'mediatomb-daemon'
    }
    redhat: {
      $package_name = 'mediatomb'
    }
    default: {
      fail("Unsupported platform: ${::osfamily}")
    }
  }
  $package_ensure = present
  $config_dir = '/etc/mediatomb'
  $config_path = "$config_dir/config.xml"
}
