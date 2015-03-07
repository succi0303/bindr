#
# Cookbook Name:: base
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

rbenv_ruby "2.1.5" do
  ruby_version "2.1.5"
  global true
end

rbenv_gem "bundler" do
  ruby_version "2.1.5"
  version "1.8.2"
end

bash 'create-postgresql-vagrant-user' do
  user 'postgres'
  code <<-EOH
  echo "CREATE ROLE vagrant WITH LOGIN PASSWORD 'vagrant' CREATEDB;" | psql
  EOH
  action :run
  not_if <<-EOH
  psql -c "SELECT * FROM pg_user WHERE usename='vagrant'" | grep -c vagrant
  EOH
end

service 'iptables' do
  action [:disable, :stop]
end
