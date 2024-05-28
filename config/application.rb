require_relative 'boot'

require 'rails'
# Pick the frameworks you want:
# require 'active_record/railtie'
require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'action_view/railtie'
require 'action_cable/engine'
require 'rails/test_unit/railtie'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)


module Tdd
  class Application < Rails::Application
    config.load_defaults 7.1

    # Skip ActiveRecord setup for this application
    config.generators.system_tests = nil
    config.api_only = true
  end
end
