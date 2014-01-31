default['rackspace_meetme_newrelic_plugin']['package_name'] = 'newrelic-plugin-agent'
default['rackspace_meetme_newrelic_plugin']['poll_interval'] = 60
default['rackspace_meetme_newrelic_plugin']['config_file'] = '/etc/newrelic/newrelic_plugin_agent.cfg'
default['rackspace_meetme_newrelic_plugin']['log_dir'] = '/var/log/newrelic'
default['rackspace_meetme_newrelic_plugin']['log_file'] = 'newrelic_plugin_agent.log'
default['rackspace_meetme_newrelic_plugin']['run_dir'] = '/var/run/newrelic'
default['rackspace_meetme_newrelic_plugin']['user'] = 'newrelic'
default['rackspace_meetme_newrelic_plugin']['group'] = 'root'

default['rackspace_meetme_newrelic_plugin']['elasticsearch']['enable'] = false
default['rackspace_meetme_newrelic_plugin']['memcached']['enable'] = false
default['rackspace_meetme_newrelic_plugin']['mongodb']['enable'] = false
default['rackspace_meetme_newrelic_plugin']['nginx']['enable'] = false
default['rackspace_meetme_newrelic_plugin']['php_fpm']['enable'] = false
default['rackspace_meetme_newrelic_plugin']['rabbitmq']['enable'] = false
