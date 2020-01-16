#
# wrapper_attribute cookbook demonstration, attributes/default.rb
#

# These are all demonstration values, they're just for testing

force_default['myapp']['user'] = 'localapp'
force_default['myapp']['group'] = 'localgroup'
force_default['myapp']['dir_mode'] = '0755'
force_default['myapp']['file_mode'] = '0655'
force_default['myapp']['script_mode'] = '0755'

force_default['myapp']['main_dir'] = '/opt/localapp'
force_default['myapp']['bin_dir'] = '/opt/localapp/bin'
force_default['myapp']['conf_dir'] = '/opt/localapp/conf'
force_default['myapp']['log_dir'] = '/opt/localapp/log'

#force_default['myapp']['config_file'] = 'app_config.conf'

force_default['myapp']['service'] = 'localappservice'

force_default['myapp']['tune']['min_threads'] = 5
force_default['myapp']['tune']['max_threads'] = 10
