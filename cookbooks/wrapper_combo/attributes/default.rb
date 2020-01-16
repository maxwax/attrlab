#
# wrapper_combo cookbook demonstration, attributes/default.rb
#

# These are all demonstration values, they're just for testing

force_default['myapp']['user'] = 'comboapp'
force_default['myapp']['group'] = 'combogroup'
# force_default['myapp']['dir_mode'] = '0755'
# force_default['myapp']['file_mode'] = '0655'
# force_default['myapp']['script_mode'] = '0755'

# force_default['myapp']['main_dir'] = '/opt/comboapp'
# force_default['myapp']['bin_dir'] = '/opt/comboapp/bin'
# force_default['myapp']['conf_dir'] = '/opt/comboapp/conf'
# force_default['myapp']['log_dir'] = '/opt/comboapp/log'

#force_default['myapp']['config_file'] = 'app_config.conf'

force_default['myapp']['service'] = 'comboappservice'

force_default['myapp']['tune']['min_threads'] = 5
force_default['myapp']['tune']['max_threads'] = 10
