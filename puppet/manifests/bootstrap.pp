Exec { path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/" ] }

########### Repository management ###########
class { 'apt':
  apt_update_frequency => weekly
}

################### Java ####################
package { 'openjdk-7-jre-headless':
	require  => Class['apt'],
	ensure => latest
}
