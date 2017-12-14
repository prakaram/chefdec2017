case node["platform_family"]
when "debian"
  node.default["package_name"] = "apache2"
  node.default["service_name"] = "apache2"
  node.default["document_root"] = "/var/www/html"
when "rhel"
  node.default["package_name"] = "httpd"
  node.default["service_name"] = "httpd"
  node.default["document_root"] = "/var/www/html"
end