source 'https://rubygems.org'
gem 'rails', '3.2.9'
gem 'jquery-rails'
  gem "railties", "~> 3.2.9"
  gem 'contact_us', '~> 0.4.0'
  gem "formtastic", "~> 2.2.1"
  gem 'carrierwave'
  #gem 'faker', '1.0.1'
  gem 'bootstrap-will_paginate', '0.0.6'
  gem "bcrypt-ruby", "~> 3.0.1"
  gem "fog"
gem "activemerchant", "~> 1.29.3"
  gem "activeadmin"
  gem "kaminari", "~> 0.14.1"
  gem 'jquery-rails-cdn'
gem 'fitvidsjs_rails'

group :development, :test do
   gem 'sqlite3'
    gem 'rspec-rails', '2.10.0' # Uses rspec to run Test Driven Development Tests.
    gem 'guard-rspec', '0.5.5'  # Rspec automatically runs Spec.
end

group :development do
    gem 'annotate', '2.5.0' # Annotates Rails/ActiveRecord Models, routes, fixtures, and others based on the database schema.
    gem 'guard-spork'
    gem 'guard-livereload'
  gem "letter_opener"

  end

group :assets do
    gem 'sass-rails', '~> 3.2.3'  # Sass adapter for the Rails asset pipeline.
    gem 'coffee-rails', '~> 3.2.1'  # Coffee Script adapter for the Rails asset pipeline.
    gem 'uglifier', '>= 1.0.3'  # Ruby wrapper for UglifyJS JavaScript compressor.
    gem 'bootstrap-sass', '2.0.4' # Twitter bootstrap with the rails asset pipeline supported sass for dynamic CSS stylesheets.
end

group :test do
    gem 'capybara', '1.1.2' # Capybara is an integration testing tool for rack based web applications. It simulates how a user would interact with a website.
 gem "ffi", "~> 1.00" #linux
    gem 'rb-inotify', '0.8.8' #linux
    gem 'libnotify', '0.5.9' #linux
    gem 'factory_girl_rails', '4.1.0' # Used to define a User object.
    gem 'cucumber-rails', '1.2.1', :require => false # Tool for behavior driven development.
    gem 'database_cleaner', '0.7.0' # Works with Cucumber.
end

group :production do
  gem 'pg'
end

