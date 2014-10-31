class mediatomb::config::params {
  $uuid = uuid()
  $home = '/var/lib/mediatomb'
  $webroot = '/usr/share/mediatomb/web'
  $server_name = 'MediaTomb'
  $ui = { enabled => true, accounts => [{ user => 'mediatomb', password => 'mediatomb' }]}
}
