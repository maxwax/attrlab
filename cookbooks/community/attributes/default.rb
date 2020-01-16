#
# community cookbook demonstration, attributes/default.rb
#

# These are all demonstration values, they're just for testing

default['myapp']['user'] = 'myapp'
default['myapp']['group'] = 'mygroup'
default['myapp']['dir_mode'] = '0755'
default['myapp']['file_mode'] = '0655'
default['myapp']['script_mode'] = '0755'

default['myapp']['main_dir'] = '/opt/myapp'
default['myapp']['bin_dir'] = '/opt/myapp/bin'
default['myapp']['conf_dir'] = '/opt/myapp/conf'
default['myapp']['log_dir'] = '/opt/myapp/log'

default['myapp']['config_file'] = 'app_config.conf'

default['myapp']['service'] = 'myappservice'

default['myapp']['tune']['min_threads'] = 5
default['myapp']['tune']['max_threads'] = 10
