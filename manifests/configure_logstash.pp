# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include puppet_logging_dashboard::configure_logstash
class puppet_logging_dashboard::configure_logstash {
  file { '/etc/logstash/conf.d/puppetserver-log.conf':
    ensure => file,
    source => 'puppet:///modules/puppet_logging_dashboard/puppetserver-log.conf',
  }

  # file { '/etc/logstash/conf.d/console-services-api-access-log.conf':
  #   ensure => file,
  #   source => 'puppet:///modules/puppet_logging_dashboard/console-services-api-access-log.conf',
  # }

  # file { '/etc/logstash/conf.d/puppetserver-access.conf':
  #   ensure => file,
  #   source => 'puppet:///modules/puppet_logging_dashboard/puppetserver-access.conf',
  # }
}
