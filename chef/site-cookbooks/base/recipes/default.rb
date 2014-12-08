#
# Cookbook Name:: base
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

execute 'bundle install' do
  command "su vagrant -l -c 'curl https://gist.githubusercontent.com/yuchan/9e2143b661798c9f4458/raw/82ad98497bff291fd8b8fadf97e3891092e9baac/mylinuxprovisioning.bash | bash'"
  action :run
end

apt_package 'language-pack-ja' do
  action :install
end

apt_package 'libssl-dev' do
  action :install
end
