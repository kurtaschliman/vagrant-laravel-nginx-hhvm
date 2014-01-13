Exec { path => '/bin:/usr/bin:/usr/local/bin:/usr/sbin:/sbin' }

exec { "update" :
  command => 'apt-get update'
}

$devPackages = ["vim", "curl", "git"]
package { $devPackages :
  ensure => 'installed',
  require => Exec["update"],
}
