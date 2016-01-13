include apt

$exec_path = '/bin:/sbin:/usr/bin:/usr/sbin'
$user = 'vagrant'
$home = "/home/$user"
$course = "cs3281"
$work = "$home/$course"

$root_ssh = '/root/.ssh'
$root_hosts = "$root_ssh/known_hosts"
$user_hosts = "$home/.ssh/known_hosts"

$host = 'github.com'
$org = "$course-2016"
$repo = 'course-info.git'

package { 'ssh': ensure => present }
package { 'git': ensure => present }
package { 'cmake': ensure => present }
package { 'gcc': ensure => present }
package { 'g++': ensure => present }
package { 'libboost-all-dev': ensure => present }
package { 'vim': ensure => present }
package { 'emacs': ensure => present }

file { $work:
  ensure => directory,
  owner => $user,
  mode => "0744"
}

file { $root_ssh:
  ensure => directory,
  mode => "0700"
}

exec { 'fetch_hosts':
  command => "ssh-keyscan '$host' | tee '$root_hosts' >> '$user_hosts' && chown '$user:$user' '$user_hosts'",
  path => "$exec_path",
  unless => "grep '$host' '$dest'",
  require => [Package['ssh'], File["$root_ssh"]]
}

class { 'config':
  id => $user
}
