class config($user) {

  $prefix = "/home/$user"
  $remote = "puppet:///modules/config"

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

}
