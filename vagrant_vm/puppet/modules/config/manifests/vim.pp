class config::vim($id) {

  $prefix = "/home/$id"
  $vimdir = "$prefix/.vim"
  $swapdir = "$vimdir/swap"
  $undodir = "$vimdir/undo"
  $remote = 'puppet:///modules/config'

  file { "$vimdir":
    mode => 755,
    ensure => directory
  }

  file { "$swapdir":
    mode => 700,
    ensure => directory,
    require => [File["$vimdir"]]
  }

  file { "$undodir":
    mode => 700,
    ensure => directory,
    require => [File["$vimdir"]]
  }

  file { "$prefix/.vimrc":
    mode => 644,
    source => "$remote/vimrc"
  }

  file { "$prefix/.viminfo":
    mode => 600,
    ensure => present,
    content => ""
  }

}
