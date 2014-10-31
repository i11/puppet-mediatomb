class mediatomb::install {
  if !defined(Package[$mediatomb::package_name]) {
    package { $mediatomb::package_name:
      ensure => $mediatomb::package_ensure
    }
  }
}
