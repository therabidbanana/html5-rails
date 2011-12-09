module Html5
  module SlimRails
    class Engine < ::Rails::Engine

      # Extend application_helper
      initializer 'html5_slim_rails_engine.helper' do |app|
        ActionController::Base.helper(Html5::SlimRails::BoilerplateHelper)
      end

      # Extend application_controller
      # initializer 'html5_rails_engine.controller' do |app|
      #   ActiveSupport.on_load(:action_controller) do
      #     include Html5::Rails::BoilerplateController
      #   end
      # end

    end
  end
end
