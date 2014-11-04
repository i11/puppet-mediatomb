# puppet-mediatomb

Puppet module for setting up MediaTomb, an open source (GPL) UPnP MediaServer

## Usage

```
  include mediatomb
```

### Redhat family

Redhat binary compatible distributions currently has limited configuration options.
None of the *mediatomb::config::params* values are used.

rpmforge repository is required for mediatomb installation. Consider including corresponding module (e.g. yum).

Example using example42/yum:
```
  include yum::repo::rpmforge
```
