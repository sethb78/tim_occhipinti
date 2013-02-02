# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
TimOcchipinti::Application.initialize!

config.gem 'rack-google-analytics', :lib => 'rack/google-analytics'
config.middleware.use Rack::GoogleAnalytics, :tracker => 'UA-38171296-1'