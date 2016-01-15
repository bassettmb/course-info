class config($user, $group, $path, $remote) {

  $home = "/home/$user"
  $remotePrefix = "$remote/$name"

  class { 'vim':
    user => $user,
    group => $group,
    prefix => $home,
    remote => $remotePrefix
  }

  class { 'shell':
    user => $user,
    group => $group,
    prefix => $home,
    remote => $remotePrefix
  }

  class { 'lock':
    user => $user,
    path => $path
  }

}
