require_relative "boot"

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
require "sprockets/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Locomotiveapp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    config.autoload_paths << Rails.root.join('lib')

    config.x.locomotive_search_backend = :algolia

    config.middleware.insert_before ActionDispatch::Static, Rack::Cors do
      allow do
        origins '*'
        resource '/assets/*', headers: :any, methods: :any
      end
    end

    # Steam
    initializer 'station.steam', after: 'steam' do |app|
      Locomotive::Steam.configure do |config|
        config.middleware.insert_before Locomotive::Steam::Middlewares::Site, 'Locomotive::Steam::Middlewares::Papertrail'
      end
    end

    config.hosts << 'beta.locomotive.works'
    config.hosts << ->(host) {
      permitted_domains = Rails.cache.fetch('locomotive-domains', expires_in: 2.minute) do
        Locomotive::Site.pluck(:domains).flatten
      end
      permitted_domains.include?(host)
    }
  end
end
