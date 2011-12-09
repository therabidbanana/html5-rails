module Html5
  module SlimRails
    module BoilerplateHelper


      def google_account_id
        ENV['GOOGLE_ACCOUNT_ID'] || google_config(:google_account_id)
      end

      def google_api_key
        ENV['GOOGLE_API_KEY'] || google_config(:google_api_key)
      end

      def remote_jquery(version)
        if ::Rails.env == 'development'
          "'jquery', '#{version}', {uncompressed:true}"
        else
          "'jquery', '#{version}'"
        end
      end

      def local_jquery(version)
        if ::Rails.env == 'development'
          "#{version}/jquery.js"
        else
          "#{version}/jquery.min.js"
        end
      end

      private

      def add_class(name, attrs)
        classes = attrs[:class] || ''
        classes.strip!
        classes = ' ' + classes if !classes.blank?
        classes = name + classes
        attrs.merge(:class => classes)
      end

      def google_config(key)
        configs = YAML.load_file(File.join(::Rails.root, 'config', 'google.yml'))[::Rails.env.to_sym] rescue {}
        configs[key]
      end

    end
  end
end
