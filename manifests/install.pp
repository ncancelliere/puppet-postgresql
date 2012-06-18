class postgresql::install {

  package { ["postgresql-9.1","postgresql-client-9.1"]:
    ensure => present,
    require => User["postgres"],
  }

  user { "postgres":
    ensure => present,
    comment => "PostgreSQL user",
    gid => "postgres",
    shell => "/bin/false",
    require => Group["postgres"],
  }

  group { "postgres":
    ensure => present,
  }

}
