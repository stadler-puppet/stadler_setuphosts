class stadler_setuphosts {
  
  notify { "hello from setuphosts":}

  # always test with noop first!
  resources { 'host': 
    purge => true,
    noop  => false,
  }
  host { 'localhost':
    ensure => 'present',
    ip     => '127.0.0.1',
    target => '/etc/hosts',
  }
  host { 'master':
    ensure => 'present',
    ip     => '10.20.2.18',
    target => '/etc/hosts',
  }
  host { 'centos65a':
    ensure => 'present',
    ip     => '10.20.2.17',
    target => '/etc/hosts',
  }
  host { 'ubuntu1204a':
    ensure => 'present',
    ip     => '10.20.2.19',
    target => '/etc/hosts',
  }
}
