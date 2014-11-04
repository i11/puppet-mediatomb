class mediatomb::params {
  $config_dir = '/etc/mediatomb'
  case $::osfamily {
    debian: {
      $package_name = 'mediatomb-daemon'
      $config_file = "$config_dir/config.xml"
      $config_template = "${module_name}/config.xml.erb"
    }
    redhat: {
      $package_name = 'mediatomb'
      $config_file = '/etc/sysconfig/mediatomb'
      $config_template = "${module_name}/redhat/sysconfig.erb"
    }
    default: {
      fail("Unsupported platform: ${::osfamily}")
    }
  }
  $package_ensure = present
  $service_name = 'mediatomb'
}
