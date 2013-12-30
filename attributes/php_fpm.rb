default[:meetme_newrelic_plugin][:php_fpm][:name] = node[:hostname]
default[:meetme_newrelic_plugin][:php_fpm][:scheme] = "http"
default[:meetme_newrelic_plugin][:php_fpm][:host] = "127.0.0.1"
default[:meetme_newrelic_plugin][:php_fpm][:port] = "80"
default[:meetme_newrelic_plugin][:php_fpm][:path] = "/fpm_status"
default[:meetme_newrelic_plugin][:php_fpm][:query] = "json"
