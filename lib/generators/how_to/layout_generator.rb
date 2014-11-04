module HowTo
  module Generators

    class LayoutGenerator < Rails::Generators::Base
      source_root File.expand_path('../../../../app/views/layouts/how_to', __FILE__)

      desc <<DESC
Description:
    Copies HowTo layout file to your application's /views/layouts/how_to directory.
DESC
      def generate_partial
        copy_file "application.html.erb", "app/views/layouts/how_to/#{HowTo.config.layout_name}.html.erb"
        copy_file "_navigation.html.erb", "app/views/layouts/how_to/_navigation.html.erb"
        copy_file "_messages.html.erb", "app/views/layouts/how_to/_messages.html.erb"
      end
    end
  end
end
