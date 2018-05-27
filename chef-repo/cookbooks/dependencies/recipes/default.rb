#
# Cookbook Name:: dependencies
# Recipe:: default
#
# Copyright 2018, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
bash 'test_run' do
  user 'root'
  cwd '/root'
  code <<-EOH
  yum install httpd -y
  yum install php php-mysql -y
  service httpd restart
  EOH
end
