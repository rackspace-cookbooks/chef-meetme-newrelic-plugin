include_recipe "python::#{node['python']['install_method']}"
include_recipe "python::pip"

#install the meet me newrelic plugin agent
python_pip "pymongo" do
  action :install
end

#define newrelic-plugin-agent service
service "newrelic_plugin_agent" do
  supports :restart => true, :start => true, :stop => true, :status => true
end

if node[:meetme_newrelic_plugin][:mongodb][:databag_name].nil?
	databag_name = node.chef_environment
else
	databag_name = node[:meetme_newrelic_plugin][:mongodb][:databag_name]
end

databag_item_name = node[:meetme_newrelic_plugin][:mongodb][:databag_item_name]

db_settings = data_bag_item(databag_name, databag_item_name)

admin_username_key = node[:meetme_newrelic_plugin][:mongodb][:admin_username_key]
admin_password_key = node[:meetme_newrelic_plugin][:mongodb][:admin_password_key]
db_username_key = node[:meetme_newrelic_plugin][:mongodb][:db_username_key]
db_password_key = node[:meetme_newrelic_plugin][:mongodb][:db_password_key]

admin_username = db_settings[admin_username_key]
admin_password = db_settings[admin_password_key]
db_username = db_settings[db_username_key]
db_password = db_settings[db_password_key]

template node[:meetme_newrelic_plugin][:config_file] do
  source "mongodb.newrelic_plugin_agent.cfg.erb"
  owner node[:meetme_newrelic_plugin][:user]
  group node[:meetme_newrelic_plugin][:group]
  mode 0774
  variables(
  	:license_key => node[:newrelic][:application_monitoring][:license],
  	:poll_interval => node[:meetme_newrelic_plugin][:poll_interval],
    :user => node[:meetme_newrelic_plugin][:user],
    :log_file => "#{node[:meetme_newrelic_plugin][:log_dir]}/#{node[:meetme_newrelic_plugin][:log_file]}",
    :run_dir => node[:meetme_newrelic_plugin][:run_dir],
  	:hostname => node[:hostname],
  	:host => node[:meetme_newrelic_plugin][:mongodb][:host],
  	:port => node[:meetme_newrelic_plugin][:mongodb][:port],
  	:admin_username => admin_username,
  	:admin_password => admin_password,
  	:database => node[:meetme_newrelic_plugin][:mongodb][:database],
  	:db_username => db_username,
  	:db_password => db_password
  )
  notifies :restart, resources(:service => "newrelic_plugin_agent")
end
