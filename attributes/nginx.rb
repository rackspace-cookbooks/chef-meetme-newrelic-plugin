default['rackspace_meetme_newrelic_plugin']['nginx']['name'] = node['hostname']
default['rackspace_meetme_newrelic_plugin']['nginx']['host'] = '127.0.0.1'
default['rackspace_meetme_newrelic_plugin']['nginx']['port'] = '80'
default['rackspace_meetme_newrelic_plugin']['nginx']['path'] = '/nginx_stub_status'
default['rackspace_meetme_newrelic_plugin']['nginx']['verify_ssl_cert'] = 'false'
