rackspace_meetme-newrelic-plugin Cookbook
===============================
Installs the MeetMe plugin for NewRelic


Requirements
------------
rackspace_python


Attributes
----------
#### rackspace_meetme-newrelic-plugin::default
* `node['rackspace_meetme_newrelic_plugin']['package_name']` - The name of the pip package that installs the meetme newrelic plugin  
* `node['rackspace_meetme_newrelic_plugin']['poll_interval']` - interval, in seconds, that stats are polled  
* `node['rackspace_meetme_newrelic_plugin']['config_file']` -  location of config file
* `node['rackspace_meetme_newrelic_plugin']['log_dir']` - logging directory
* `node['rackspace_meetme_newrelic_plugin']['log_file']` - name of log file
* `node['rackspace_meetme_newrelic_plugin']['run_dir']` -  the run directory for the pid file
* `node['rackspace_meetme_newrelic_plugin']['user']` -  the user that runs the application 
* `node['rackspace_meetme_newrelic_plugin']['group']` -  group for application file permissions 

#### rackspace_meetme-newrelic-plugin::memcached
* `node['rackspace_meetme_newrelic_plugin']['memcached']['name']` - hostname memcached instance is running on
* `node['rackspace_meetme_newrelic_plugin']['memcached']['host']` - host memcached instance is running on
* `node['rackspace_meetme_newrelic_plugin']['memcached']['port']` - port memcached is listening on
* `node['rackspace_meetme_newrelic_plugin']['memcached']['path']` - path of unix socket (if memcached is using one)

#### rackspace_meetme-newrelic-plugin::mongodb
* `node['rackspace_meetme_newrelic_plugin']['mongodb']['host']` - host mongodb instance is running on
* `node['rackspace_meetme_newrelic_plugin']['mongodb']['port']` - port mongdb is listening on
* `node['rackspace_meetme_newrelic_plugin']['mongodb']['database']` - name of database to monitor
* `node['rackspace_meetme_newrelic_plugin']['mongodb']['databag_name']` - name of databag that holds mongo config
* `node['rackspace_meetme_newrelic_plugin']['mongodb']['databag_item_name']` - name of databag item for mongo config
* `node['rackspace_meetme_newrelic_plugin']['mongodb']['admin_username_key']` - key for admin username
* `node['rackspace_meetme_newrelic_plugin']['mongodb']['admin_password_key']` - key for admin password
* `node['rackspace_meetme_newrelic_plugin']['mongodb']['db_username_key']` - key for db username
* `node['rackspace_meetme_newrelic_plugin']['mongodb']['db_password_key']` - key for db password

#### rackspace_meetme-newrelic-plugin::nginx
* `node['rackspace_meetme_newrelic_plugin']['nginx']['name']` - hostname nginx is running on
* `node['rackspace_meetme_newrelic_plugin']['nginx']['host']` - host nginx is listening on
* `node['rackspace_meetme_newrelic_plugin']['nginx']['port']` - port nginx is listening on
* `node['rackspace_meetme_newrelic_plugin']['nginx']['path']` - path of nginx stub status page
* `node['rackspace_meetme_newrelic_plugin']['nginx']['verify_ssl_cert']` - verify ssl certificate flag

#### rackspace_meetme-newrelic-plugin::php_fpm
* `node['rackspace_meetme_newrelic_plugin']['php_fpm']['name']` - hostname php-fpm is running on
* `node['rackspace_meetme_newrelic_plugin']['php_fpm']['scheme']` - fpm scheme (ex: http or https)
* `node['rackspace_meetme_newrelic_plugin']['php_fpm']['host']` - host where fpm status page is listening
* `node['rackspace_meetme_newrelic_plugin']['php_fpm']['port']` - port where fpm status page is listening
* `node['rackspace_meetme_newrelic_plugin']['php_fpm']['path']` - path of fpm status page 
* `node['rackspace_meetme_newrelic_plugin']['php_fpm']['query']` - query type (ex: json)


Usage
-----
Include `rackspace_meetme-newrelic-plugin` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[rackspace_meetme-newrelic-plugin]"
  ]
}
```

Don't forget to provide your New Relic license key at `node['newrelic']['application_monitoring']['license']`.

Contributing
------------

* Please see [contributing.md](https://github.com/rackspace-cookbooks/contributing/blob/master/CONTRIBUTING.md) for more details


License and Authors
-------------------
- Author:: Steven Gonzales
- Author:: Kent Shultz (kent.shultz@rackspace.com)

```text
Copyright 2014, Rackspace, US Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
