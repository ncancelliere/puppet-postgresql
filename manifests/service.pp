class postgresql::service {

  service { "postgresql":
    ensure => running,
    hasstatus => true,
    hasrestart => true,
    enabled => true,
    require => Class["postgresql::config"],
  }

}
