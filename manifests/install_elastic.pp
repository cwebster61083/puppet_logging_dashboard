# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include puppet_logging_dashboard::install_elastic
class puppet_logging_dashboard::install_elastic {
  include elastic_stack::repo
}