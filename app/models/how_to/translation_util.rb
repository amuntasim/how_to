module HowTo
  module TranslationUtil

    def self.included(base)
      base.extend ClassMethods
    end

    module ClassMethods

      def allow_multi_locales_edit(*locales)
        if defined?(self.translated_attribute_names)

          # Find globalize translatable fields
          fields = self.translated_attribute_names || []

          # Specially format them with i18n_LOCALE_FIELD_NAME
          i18n_fields = fields.collect { |f| locales.collect { |l| "i18n_#{l.to_s}_#{f}".to_sym } }.flatten

          # Store global configuration
          @@i18n_multi_edit_options ||= {}

          include InstanceMethods

          i18n_fields.each do |field|
            @@i18n_multi_edit_options[field] ||= field.to_s.split('_').collect(&:to_sym)

            self.__send__ :define_method, field do
              get_i18nize_value(@@i18n_multi_edit_options[field])
            end

            self.__send__ :define_method, "#{field.to_s}=".to_sym do |value|
              set_i18nize_value(@@i18n_multi_edit_options[field], value)
            end
          end
        end
      end

    end

    module InstanceMethods
      # Set method for I18nize call, so it will automatically store current
      # locale and set the desire locale then rollback to the active one.
      def i18nize_call(locale, &block)
        active_locale = I18n.locale.to_s
        I18n.locale = locale

        result = block.call()

        I18n.locale = active_locale
        result
      end

      # Execute in the field accessor
      def get_i18nize_value(field_parts)
        i18nize_call(field_parts[1]) do
          field_name = field_parts.to_a.join('_')
          self.__send__ field_name[8..-1].to_sym
        end
      end

      # Set the field value
      def set_i18nize_value(field_parts, value)
        i18nize_call(field_parts[1]) do
          field_name = field_parts.to_a.join('_')
          self.__send__ "#{field_name[8..-1].to_s}=", value
        end
      end
    end
  end
end