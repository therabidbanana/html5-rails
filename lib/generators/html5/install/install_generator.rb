module Html5
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)

      def copy_views
        directory "views", "app/views"
      end

      def copy_stylesheets
        directory "assets", "app/assets"
      end

      def show_readme
        readme "README" if behavior == :invoke
      end
    end
  end
end
