class config::shell($user, $prefix, $remote) {

  file { "$prefix/.bashrc":
    mode => "0644",
    owner => $user,
    ensure => file,
    source => "$remote/bashrc"
  }

}
