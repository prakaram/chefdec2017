#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

# Install apache package
package node["package_name"]

# Start apache service
service node["service_name"] do
  action [:enable, :start]
end

# To create WebPage

template "#{node["document_root"]}/index.html" do
  source "index.html.erb"
  mode "0644"
end
