Exec { path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/" ] }

########### Repository management ###########
class { 'apt':
  apt_update_frequency => weekly
}

################### Java ####################
class { 'java':
  distribution => 'jre',	# defaults to jdk
}

############### Elasticsearch ###############
class { 'elasticsearch':
  version => '1.4.1',
  manage_repo  => true,
  repo_version => '1.4',	# corresponds with the major version of Elasticsearch
}

elasticsearch::instance { 'ord-01': }