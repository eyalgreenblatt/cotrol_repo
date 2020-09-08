node default {
  file { '/root/README':
    ensure => file,
    content => 'This is a readme change by eyal greenblatt',
    owner   => 'root',
  }
}

node 'master.dom37.lab.forescout.com' {
  include role::master_server
}

