require File.expand_path('../boot', __FILE__)


require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"

Bundler.require(*Rails.groups)

module ProductsCatalog
  class Application < Rails::Application
    config.sass.preferred_syntax = :sass
    config.active_record.raise_in_transactional_callbacks = true
  end
end
