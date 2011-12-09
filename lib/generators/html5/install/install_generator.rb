module Html5
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)

      # def run_config
      #   inside do
      #     # Needs more work
      #     run("bundle exec compass config --app rails -r compass-html5 -q")
      #   end
      # end

      def show_readme
        readme "README" if behavior == :invoke
      end
    end
  end
end
