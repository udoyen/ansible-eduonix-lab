apt_update
node.default["port"] = "81"
node.default["secureport"] = "8443"

apt_package "apache2" do
  action :install
end

template '/etc/apache2/ports.conf' do
  source 'ports.conf.erb'
end

# This is a resource
service "apache2" do
  action [ :start, :enable ] # using the start action here produces a bug https://github.com/chef/chef/issues/12553
end
