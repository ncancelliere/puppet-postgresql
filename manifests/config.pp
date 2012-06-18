class postgresql::config {
  
  file { "/etc/postgresql/9.1/main/pg_hba.conf":
    ensure => present,
    source => "puppet:///modules/postgresql/pg_hba.conf",
    owner => "postgres",
    group => "postgres",
    mode => 640,
    require => Class["postgresql::install"],
    notify => Class["postgresql::service"],
  }

}
