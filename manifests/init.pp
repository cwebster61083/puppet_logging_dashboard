# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include puppet_logging_dashboard
class puppet_logging_dashboard {
  include puppet_logging_dashboard::install_java
  include puppet_logging_dashboard::install_elastic

  class { 'elasticsearch': }

  # Class['puppet_logging_dashboard::install_java']
  # -> Class['puppet_logging_dashboard::install_elastic']
}
