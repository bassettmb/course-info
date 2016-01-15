class config::vim($user, $group, $prefix, $remote) {

  $vimdir = "$prefix/.vim"

  file { "$prefix/.vimrc":
    mode => "0644",
    owner => $user,
    group => $user,
    ensure => file,
    source => "$remote/vimrc"
  }

  file { "$prefix/.viminfo":
    mode => "0600",
    owner => $user,
    group => $user,
    ensure => file,
    content => ""
  }

  file { "$vimdir":
    mode => "0755",
    owner => $user,
    group => $user,
    ensure => directory
  }

  file { "$vimdir/swap":
    mode => "0700",
    owner => $user,
    group => $user,
    ensure => directory,
    require => [File["$vimdir"]]
  }

  file { "$vimdir/undo":
    mode => "0700",
    owner => $user,
    group => $user,
    ensure => directory,
    require => [File["$vimdir"]]
  }

}
