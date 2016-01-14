class config::vim($user, $prefix, $remote) {

  $vimdir = "$prefix/.vim"

  file { "$prefix/.vimrc":
    mode => "0644",
    owner => $id,
    ensure => file,
    source => "$remote/vimrc"
  }

  file { "$prefix/.viminfo":
    mode => "0600",
    owner => $id,
    ensure => file,
    content => ""
  }

  file { "$vimdir":
    mode => "0755",
    owner => $id,
    ensure => directory
  }

  file { "$vimdir/swap":
    mode => "0700",
    owner => $id,
    ensure => directory,
    require => [File["$vimdir"]]
  }

  file { "$vimdir/undo":
    mode => "0700",
    owner => $id,
    ensure => directory,
    require => [File["$vimdir"]]
  }

}
