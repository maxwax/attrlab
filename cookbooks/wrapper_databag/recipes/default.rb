#
# Cookbook:: wrapper_databag
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

config_bag = data_bag_item('custom_bag', 'demo_bag')

node.force_default['myapp'] = config_bag['config']

include_recipe 'community::default'
