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

# Ensure we have a valid mountpoint for the virtualbox share
file { $work:
  ensure => directory,
  owner => $user,
  mode => "0744"
}

# Load in dot files
class { 'config':
  user => $user
}
