require File.expand_path(File.dirname(__FILE__) + '/lib/ey_logger')
require File.expand_path(File.dirname(__FILE__) + '/lib/ey_logger_hooks')
require File.expand_path(File.dirname(__FILE__) + '/recipes/database')
# require 'eycap/recipes/ferret'
require File.expand_path(File.dirname(__FILE__) + '/recipes/mongrel')
require File.expand_path(File.dirname(__FILE__) + '/recipes/nginx')
require File.expand_path(File.dirname(__FILE__) + '/recipes/slice')
require File.expand_path(File.dirname(__FILE__) + '/recipes/deploy')
require File.expand_path(File.dirname(__FILE__) + '/recipes/sphinx')
require File.expand_path(File.dirname(__FILE__) + '/recipes/backgroundrb')
require File.expand_path(File.dirname(__FILE__) + '/recipes/memcached')
# require 'eycap/recipes/solr'
require File.expand_path(File.dirname(__FILE__) + '/recipes/monit')
# require 'eycap/recipes/tomcat'
# require 'eycap/recipes/juggernaut'
require File.expand_path(File.dirname(__FILE__) + '/recipes/passenger')
require File.expand_path(File.dirname(__FILE__) + '/recipes/apache')

Capistrano::Configuration.instance(:must_exist).load do
  
  default_run_options[:pty] = true if respond_to?(:default_run_options)
  set :keep_releases, 3
  set :runner, defer { user }
  
end
