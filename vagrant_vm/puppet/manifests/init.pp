$user = 'vagrant'
$group = $user
$course = 'cs3281'
$exec_path = '/usr/sbin:/usr/bin:/sbin:/bin'
$remote = "puppet:///modules"

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
file { "/home/$user/$course":
  ensure => directory,
  owner => $user,
  mode => "0744"
}

class { 'config':
  user => $user,
  group => $group,
  path => $exec_path,
  remote => $remote
}
