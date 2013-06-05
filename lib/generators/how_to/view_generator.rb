module HowTo
  module Generators

    class ViewGenerator < Rails::Generators::Base
      source_root File.expand_path('../../../../app/views/how_to', __FILE__)

      desc <<DESC
Description:
    Copies HowTo view (show.html.erb) file to your application's /views/how_to directory.
DESC
      def generate_view
        copy_file "faq/show.html.erb", "app/views/how_to/faq/show.html.erb"
      end

    end

  end
end
