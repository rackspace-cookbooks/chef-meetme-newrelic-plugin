node.set['rackspace_meetme_newrelic_plugin']['mongodb']['enable'] = true

include_recipe 'rackspace_python::pip'

rackspace_python_pip 'pymongo' do
  action :install
end

include_recipe 'rackspace_meetme-newrelic-plugin::default'
