#
# Cookbook:: community
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

puts
puts "DEBUG community::default.rb REFERENCE ATTRIBUTES: 'myapp'"
puts "DEBUG community::default.rb REFERENCE ATTRIBUTES: '/opt/myapp'"
puts "DEBUG community::default.rb REFERENCE ATTRIBUTES: 'myappservice'"
puts

puts
puts "DEBUG community::default.rb ENTRY node['myapp'] VALUES"
pp node['myapp']

group node['myapp']['group'] do
  action :create
end

user node['myapp']['user'] do
  group node['myapp']['group']
  action :create
end

directory node['myapp']['main_dir'] do
  owner node['myapp']['user']
  group node['myapp']['group']
  mode node['myapp']['dir_mode']

  action :create
end

directory node['myapp']['bin_dir'] do
  owner node['myapp']['user']
  group node['myapp']['group']
  mode node['myapp']['dir_mode']

  action :create
end

directory node['myapp']['conf_dir'] do
  owner node['myapp']['user']
  group node['myapp']['group']
  mode node['myapp']['dir_mode']

  action :create
end

directory node['myapp']['log_dir'] do
  owner node['myapp']['user']
  group node['myapp']['group']
  mode node['myapp']['dir_mode']

  action :create
end

template "#{node['myapp']['conf_dir']}/#{node['myapp']['config_file']}" do
  source "#{node['myapp']['config_file']}.erb"
  owner node['myapp']['user']
  group node['myapp']['group']
  mode node['myapp']['script_mode']

  variables ({
      user: node['myapp']['user'],
      group: node['myapp']['group'],
      dir_mode: node['myapp']['dir_mode'],
      script_mode: node['myapp']['script_mode'],
      file_mode: node['myapp']['file_mode'],
      main_dir: node['myapp']['main_dir'],
      bin_dir: node['myapp']['bin_dir'],
      conf_dir: node['myapp']['conf_dir'],
      log_dir: node['myapp']['log_dir'],
      config_file: node['myapp']['config_file'],
      service: node['myapp']['service'],
      min_threads: node['myapp']['min_threads'],
      max_threads: node['myapp']['max_threads']
  })

  action :create
end
