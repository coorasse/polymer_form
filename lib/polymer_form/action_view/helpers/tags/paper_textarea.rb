module ActionView
  module Helpers
    module Tags
      class PaperTextarea < Base
        def render
          options = @options.stringify_keys
          add_default_name_and_id(options)

          if size = options.delete('size')
            options['cols'], options['rows'] = size.split('x') if size.respond_to?(:split)
          end

          content_tag('paper-textarea', options.delete('value') { value_before_type_cast(object) }, options)
        end

        class << self
          def field_type
            @field_type ||= self.name.split("::").last.downcase
          end
        end

        private

        def field_type
          self.class.field_type
        end
      end
    end
  end
end
