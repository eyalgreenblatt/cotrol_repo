node default {
  file { '/root/README':
    ensure => file,
    content => 'This is a readme change by eyal greenblatt',
    owner   => 'root',
  }
}
