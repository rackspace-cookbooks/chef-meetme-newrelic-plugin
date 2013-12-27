node.set[:meetme_newrelic_plugin][:mongodb][:enable] = true

include_recipe "python::pip"

python_pip "pymongo" do
  action :install
end

include_recipe "meetme-newrelic-plugin::default"
