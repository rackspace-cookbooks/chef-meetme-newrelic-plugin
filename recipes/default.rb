#
# Cookbook Name:: meetme-newrelic-plugin
# Recipe:: default
#

include_recipe "python::#{node[:python][:install_method]}"
include_recipe "python::pip"

Chef::Log.info(node[:python][:install_method])
Chef::Log.info(node[:meetme_newrelic_plugin][:package_name])
#install the meet me newrelic plugin agent
python_pip node[:meetme_newrelic_plugin][:package_name] do
  action :install
end

Chef::Log.info(node[:meetme_newrelic_plugin][:package_name])

directory node[:meetme_newrelic_plugin][:run_dir] do
  owner node[:meetme_newrelic_plugin][:user]
  group node[:meetme_newrelic_plugin][:group]
  mode 0774
end

directory node[:meetme_newrelic_plugin][:log_dir] do
  owner node[:meetme_newrelic_plugin][:user]
  group node[:meetme_newrelic_plugin][:group]
  mode 0774
end

template "/etc/init.d/newrelic_plugin_agent" do
  source "newrelic_plugin_agent.initd.erb"
  owner node[:meetme_newrelic_plugin][:user]
  group node[:meetme_newrelic_plugin][:group]
  mode 0774
  variables(
    :config_file => node[:meetme_newrelic_plugin][:config_file],
    :run_dir => node[:meetme_newrelic_plugin][:run_dir] 
  )
end

#define newrelic-plugin-agent service
service "newrelic_plugin_agent" do
  supports :restart => true, :start => true, :stop => true, :status => true
  action :enable
end

template node[:meetme_newrelic_plugin][:config_file] do
  source "newrelic_plugin_agent.cfg.erb"
  owner node[:meetme_newrelic_plugin][:user]
  group node[:meetme_newrelic_plugin][:group]
  mode 0774
  notifies :restart, resources(:service => "newrelic_plugin_agent")
end
