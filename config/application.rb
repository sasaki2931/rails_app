config.time_zone = 'Tokyo'
config.active_record.default_timezone = :local

require_relative "boot"

require "rails/all"


Bundler.require(*Rails.groups)

module Sample
  class Application < Rails::Application
    config.load_defaults 6.1
  end
end
