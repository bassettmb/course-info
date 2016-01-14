class config($user) {

  $prefix = "/home/$user"
  $remote = "puppet:///modules/config"
  $path = "/usr/sbin:/usr/bin:/sbin:/bin"

  class { 'config::vim':
    user => $user,
    prefix => $prefix,
    remote => $remote
  }

  class { 'config::shell':
    user => $user,
    prefix => $prefix,
    remote => $remote
  }

  class { 'config::lock':
    path => $path
  }

}
