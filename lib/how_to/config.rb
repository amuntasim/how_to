require 'active_support/configurable'

module HowTo

  def self.configure(&block)
    yield @config ||= HowTo::Configuration.new
  end

  # Global settings for HowTo
  def self.config
    @config
  end

  class Configuration #:nodoc:
    include ActiveSupport::Configurable
    config_accessor :rich_text_enabled
    config_accessor :layout_name
    config_accessor :authorization_method_to_manage
    config_accessor :authorization_method_to_view
    config_accessor :permitted_to_manage_how_to
  end

  configure do |config|
    config.rich_text_enabled = false
    config.layout_name = 'application'
    config.authorization_method_to_manage = 'authorize_to_manage_how_to'
    config.authorization_method_to_view = nil
    config.permitted_to_manage_how_to = 'permitted_to_manage_how_to?'
  end
end
