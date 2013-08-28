meetme-newrelic-plugin Cookbook
===============================
Installs the MeetMe plugin for NewRelic


Requirements
------------
python
python-pip
newrelic


Attributes
----------
#### meetme-newrelic-plugin::default
* `node[:meetme_newrelic_plugin][:package_name]` - The name of the pip package that installs the meetme newrelic plugin  
* `node[:meetme_newrelic_plugin][:poll_interval]` - interval, in seconds, that stats are polled  
* `node[:meetme_newrelic_plugin][:config_file]` -  location of config file
* `node[:meetme_newrelic_plugin][:log_dir]` - logging directory
* `node[:meetme_newrelic_plugin][:log_file]` - name of log file
* `node[:meetme_newrelic_plugin][:run_dir]` -  the run directory for the pid file
* `node[:meetme_newrelic_plugin][:user]` -  the user that runs the application 
* `node[:meetme_newrelic_plugin][:group]` -  group for application file permissions 

#### meetme-newrelic-plugin::mongodb
* `node[:meetme_newrelic_plugin][:mongodb][:host]` - host mongodb instance is running on
* `node[:meetme_newrelic_plugin][:mongodb][:port]` - port mongdb is listening on
* `node[:meetme_newrelic_plugin][:mongodb][:database]` - name of database to monitor
* `node[:meetme_newrelic_plugin][:mongodb][:databag_name]` - name of databag that holds mongo config
* `node[:meetme_newrelic_plugin][:mongodb][:databag_item_name]` - name of databag item for mongo config
* `node[:meetme_newrelic_plugin][:mongodb][:admin_username_key]` - key for admin username
* `node[:meetme_newrelic_plugin][:mongodb][:admin_password_key]` - key for admin password
* `node[:meetme_newrelic_plugin][:mongodb][:db_username_key]` - key for db username
* `node[:meetme_newrelic_plugin][:mongodb][:db_password_key]` - key for db password


Usage
-----
Just include `meetme-newrelic-plugin` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[meetme-newrelic-plugin]"
  ]
}
```

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Steven Gonzales
