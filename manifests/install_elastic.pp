# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include puppet_logging_dashboard::install_elastic
class puppet_logging_dashboard::install_elastic {
  include elastic_stack::repo
  notify { 'notify': 
    message => 'Installing Elastic Search'
  } 
  
  elasticsearch::instance { 'es-01':
  #   jvm_options => [
  #     '-Xms4g',
  #     '-Xmx4g',
  #     '#PrintGCDetails',
  #     '#PrintGCDateStamps',
  #     '#PrintTenuringDistribution',
  #     '#PrintGCApplicationStoppedTime',
  #     '#Xloggc',
  #     '#UseGCLogFileRotation',
  #     '#NumberOfGCLogFiles',
  #     '#GCLogFileSize',
  #     '#XX:UseConcMarkSweepGC',
  #   ],
  #   config      => {
  #     #  'xpack.monitoring.collection.enabled' => true,
  #     'network.host'                        => '0.0.0.0',
  #     'http.port'                           => '9200',
  #     'cluster.initial_master_nodes'        => 'elastic.puppetdebug.vlan',
  #     'xpack.monitoring.collection.enabled' =>  true,
  #   },

}

elasticsearch::instance { 'es-01':
  #   jvm_options => [
  #     '-Xms4g',
  #     '-Xmx4g',
  #     '#PrintGCDetails',
  #     '#PrintGCDateStamps',
  #     '#PrintTenuringDistribution',
  #     '#PrintGCApplicationStoppedTime',
  #     '#Xloggc',
  #     '#UseGCLogFileRotation',
  #     '#NumberOfGCLogFiles',
  #     '#GCLogFileSize',
  #     '#XX:UseConcMarkSweepGC',
  #   ],
  #   config      => {
  #     #  'xpack.monitoring.collection.enabled' => true,
  #     'network.host'                        => '0.0.0.0',
  #     'http.port'                           => '9200',
  #     'cluster.initial_master_nodes'        => 'elastic.puppetdebug.vlan',
  #     'xpack.monitoring.collection.enabled' =>  true,
  #   },
