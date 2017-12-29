require 'rollbar'

Rollbar.configure do |config|
  config.access_token = ENV['ROLLBAR_ACCESS_TOKEN']
  config.environment = App.env
  config.enabled = false unless ENV['ROLLBAR_ACCESS_TOKEN']
end
