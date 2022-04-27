# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include puppet_logging_dashboard::install_kibana
class puppet_logging_dashboard::install_kibana {
  class { 'kibana' :
    config => {
      'server.host'          => $facts['network'],
      'server.publicBaseUrl' =>"http://$facts['network']:5601",
      'elasticsearch.hosts'  => 'http://localhost:9200',
      # 'xpack.license_management.enabled' => false,
      # 'elasticsearch.username'           => 'elastic',
      # 'elasticsearch.password'           => 'changeme',
    },
  }
}
