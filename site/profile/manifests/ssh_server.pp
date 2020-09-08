class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC8WEPe+VfFGGXj0tvDOklouhBq6lcr4et1eJD2Y7sn0oblz4iDOncpCHYpidz5dXLo1yIKXnAb6A4MgggBot/Gry4Gujk4KC2dEcca+es8Ha2o0ZoqWXQxdaRchqjfVQDLngerj+lGxBjQZXM1C54YPYXYZrDrmpYIPSNcWIqBmGh29bk2Z/uqtaTlHYEx43/Sn7i8G5vxhSprgWzGSJ2meruzyR8rFJ6EGwT4jt03gyBHWlCMcrismKxmZQ8HdPx42EzKw0aEwiH8v1ZSe6KplfQj3S52bugEPZENdWFgNl4JGO1DQ8tzVbms3d3OSmETDA7MD5Z1BUlogWVs/ntn',
  }  
}
