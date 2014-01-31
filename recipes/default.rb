#
# Cookbook Name:: meetme-newrelic-plugin
# Recipe:: default
#

include_recipe "rackspace_python::#{node['rackspace_python']['install_method']}"
include_recipe 'rackspace_python::pip'

Chef::Log.info(node['rackspace_python']['install_method'])
Chef::Log.info(node['rackspace_meetme_newrelic_plugin']['package_name'])
# install the meet me newrelic plugin agent
rackspace_python_pip node['rackspace_meetme_newrelic_plugin']['package_name'] do
  action :install
end

Chef::Log.info(node['rackspace_meetme_newrelic_plugin']['package_name'])

directory node['rackspace_meetme_newrelic_plugin']['run_dir'] do
  owner node['rackspace_meetme_newrelic_plugin']['user']
  group node['rackspace_meetme_newrelic_plugin']['group']
  mode 0774
end

directory node['rackspace_meetme_newrelic_plugin']['log_dir'] do
  owner node['rackspace_meetme_newrelic_plugin']['user']
  group node['rackspace_meetme_newrelic_plugin']['group']
  mode 0774
end

template '/etc/init.d/newrelic_plugin_agent' do
  source 'newrelic_plugin_agent.initd.erb'
  owner node['rackspace_meetme_newrelic_plugin']['user']
  group node['rackspace_meetme_newrelic_plugin']['group']
  mode 0774
  variables(
    config_file: node['rackspace_meetme_newrelic_plugin']['config_file'],
    run_dir: node['rackspace_meetme_newrelic_plugin']['run_dir']
  )
end

# define newrelic-plugin-agent service
service 'newrelic_plugin_agent' do
  supports restart: true, start: true, stop: true, status: true
  action :enable
end

template node['rackspace_meetme_newrelic_plugin']['config_file'] do
  source 'newrelic_plugin_agent.cfg.erb'
  owner node['rackspace_meetme_newrelic_plugin']['user']
  group node['rackspace_meetme_newrelic_plugin']['group']
  mode 0774
  notifies :restart, 'service[newrelic_plugin_agent]'
end
