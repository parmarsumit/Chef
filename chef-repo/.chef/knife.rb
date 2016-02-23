log_level                :info
log_location             STDOUT
node_name                'sandeep'
client_key               '/home/alok/chef-repo/.chef/sandeep.pem'
validation_client_name   'chef-validator'
validation_key           '/home/alok/chef-repo/.chef/chef-validator.pem'
chef_server_url          'https://chef.lybrate.com:443'
syntax_check_cache_path  '/home/alok/chef-repo/.chef/syntax_check_cache'
cookbook_path [ '/home/alok/chef-repo/cookbooks' ]
knife[:editor]="vim"
ssl_verify_mode    :verify_none
