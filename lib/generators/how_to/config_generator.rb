module HowTo
  module Generators
    class ConfigGenerator < Rails::Generators::Base
      source_root File.expand_path(File.join(File.dirname(__FILE__), 'templates'))

      desc <<DESC
Description:
    Copies HowTo configuration file to your application's initializer directory.
DESC

      def copy_config_file
        template 'how_to_config.rb', 'config/initializers/how_to_config.rb'
      end
    end
  end
end
