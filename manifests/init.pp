# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include puppet_logging_dashboard
class puppet_logging_dashboard {
  include puppet_logging_dashboard::install_java
  include puppet_logging_dashboard::install_elastic
  include puppet_logging_dashboard::install_kibana
  include puppet_logging_dashboard::install_logstash

  # Class['puppet_logging_dashboard::install_java']
  # -> Class['puppet_logging_dashboard::install_elastic']
}
