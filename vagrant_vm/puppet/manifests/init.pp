$exec_path = '/bin:/sbin:/usr/bin:/usr/sbin'
$user = 'vagrant'
$home = "/home/$user"
$course = "cs3281"
$work = "$home/$course"
$remote = "puppet:///"

$host = 'github.com'
$org = "$course-2016"
$repo = 'course-info.git'

package { 'ssh': ensure => present }
package { 'bash': ensure => present }
package { 'bash-completion': ensure => present }
package { 'gcc': ensure => present }
package { 'g++': ensure => present }
package { 'gdb': ensure => present }
package { 'valgrind': ensure => present }
package { 'make': ensure => present }
package { 'automake': ensure => present }
package { 'cmake': ensure => present }
package { 'git': ensure => present }
package { 'vim': ensure => present }
package { 'emacs': ensure => present }
package { 'libboost-all-dev': ensure => present }

# Ensure we have a valid mountpoint for the virtualbox share
file { $work:
  ensure => directory,
  owner => $user,
  mode => "0744"
}

class lock($path) {
  exec { 'disableLock':
    command => "gsettings set org.gnome.desktop.lockdown disable-lock-screen 'true'",
    path => $path
  }
}

class shell($user, $prefix, $remote) {
  file { "$prefix/.bashrc":
    mode => "0644",
    owner => $user,
    group => $user,
    ensure => file,
    source => "$remote/bashrc"
  }
}

class vim($user, $prefix, $remote) {

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

class config {

  class { 'vim':
    user => $user,
    prefix => $home,
    remote => $remote
  }

  class { 'shell':
    user => $user,
    prefix => $home,
    remote => $remote
  }

  class { 'lock':
    path => $exec_path
  }

}
