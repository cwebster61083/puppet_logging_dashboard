# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include puppet_logging_dashboard::install_java
class puppet_logging_dashboard::install_java(
  String $java_package  = 'java-1.8.0-openjdk-devel',
) {
  class { 'java':
    package => $java_package,
  }
}
