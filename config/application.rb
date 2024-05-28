require_relative 'boot'

require 'rails'
# Pick the frameworks you want:
# require 'active_record/railtie'
require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'action_view/railtie'
require 'action_cable/engine'
require 'rails/test_unit/railtie'

Bundler.require(*Rails.groups)


module Tdd
  class Application < Rails::Application
    config.load_defaults 7.1

    config.generators.system_tests = nil
    config.api_only = true
  end
end
