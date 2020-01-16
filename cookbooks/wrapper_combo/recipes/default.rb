#
# Cookbook:: wrapper_combo
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

# Some wrapper_combo attributes have already replaced community attributes

puts
puts "DEBUG wrapper_combo::default.rb ENTRY VALUES node['myapp']"
pp node['myapp']

config_bag = data_bag_item('custom_bag', 'combo_bag')

puts
puts "DEBUG wrapper_combo::default.rb LOADED DATA BAG config_bag"
pp config_bag

node.force_default['myapp']['main_dir'] = config_bag['config']['myapp']['main_dir']
node.force_default['myapp']['bin_dir']  = config_bag['config']['myapp']['bin_dir']
node.force_default['myapp']['conf_dir'] = config_bag['config']['myapp']['conf_dir']
node.force_default['myapp']['log_dir']  = config_bag['config']['myapp']['log_dir']

puts
puts "DEBUG wrapper_combo::default.rb REPLACED SOME node['myapp'] VALUES"
pp node['myapp']

include_recipe 'community::default'
