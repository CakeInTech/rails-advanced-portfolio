require_relative "boot"

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_mailbox/engine"
require "action_text/engine"
require "action_view/railtie"
require "action_cable/engine"
require './app/services/tech_news'
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module CakePortfolio
  class Application < Rails::Application
    config.load_defaults 7.0
    config.generators.system_tests = nil
    config.aws_credentials = Rails.application.credentials.aws
    # config.eager_load_path << "{Rails.root}/lib"
    # config.autoload_paths << Rails.root.join('')
  end
end
