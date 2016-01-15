class config::shell($user, $group, $prefix, $remote) {
  file { "$prefix/.bashrc":
    mode => "0644",
    owner => $user,
    group => $group,
    ensure => file,
    source => "$remote/bashrc"
  }
}
