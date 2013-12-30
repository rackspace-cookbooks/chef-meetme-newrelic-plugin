default[:meetme_newrelic_plugin][:nginx][:name] = node[:hostname]
default[:meetme_newrelic_plugin][:nginx][:host] = "127.0.0.1"
default[:meetme_newrelic_plugin][:nginx][:port] = "80"
default[:meetme_newrelic_plugin][:nginx][:path] = "/nginx_stub_status"
default[:meetme_newrelic_plugin][:nginx][:verify_ssl_cert] = "false"
