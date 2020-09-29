# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include puppet_logging_dashboard::install_elastic
class puppet_logging_dashboard::install_elastic(

) {
  include elastic_stack::repo

  class { 'elasticsearch':
    version           => '7.9.1',
    restart_on_change => true,
  }

  elasticsearch::instance { 'es-01':
    jvm_options => [
      '-Xms4g',
      '-Xmx4g',
      '#PrintGCDetails',
      '#PrintGCDateStamps',
      '#PrintTenuringDistribution',
      '#PrintGCApplicationStoppedTime',
      '#Xloggc',
      '#UseGCLogFileRotation',
      '#NumberOfGCLogFiles',
      '#GCLogFileSize',
      '#XX:UseConcMarkSweepGC',
    ],
    config      => {
      'network.host'                        => '0.0.0.0',
      'http.port'                           => '9200',
      'node.name'                           => $facts['networking']['hostname'],
      'cluster.initial_master_nodes'        => $facts['networking']['hostname'],
      'xpack.monitoring.collection.enabled' =>  true,
      'xpack.license.self_generated.type'   => 'basic',
    },
  }
}
