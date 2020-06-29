# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include puppet_logging_dashboard::install_kibana
class puppet_logging_dashboard::install_kibana {
  class { 'kibana' :
    config => {
      'server.port'                      => '8080',
      'server.host'                      => '0.0.0.0',
      'xpack.license_management.enabled' => false,
    },
}
