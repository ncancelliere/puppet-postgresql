class postgresql::service {

  service { "postgresql":
    ensure => running,
    hasstatus => true,
    hasrestart => true,
    require => Class["postgresql::config"],
  }

}
