source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.3.5'

gem 'rails', '~> 7.1', '< 7.2'
gem 'rack-cors', require: 'rack/cors'
gem 'puma', '~> 6.4.0'
gem 'devise'
gem 'carrierwave-aws'
gem 'redis', '~> 5.0.6'
gem 'hiredis', '~> 0.6.3'
gem 'mimemagic', '~> 0.4.3'
gem 'remote_syslog_logger', '1.0.4'

# gem 'pry'
# gem 'custom_fields', path: '../../custom_fields' # for Developers
# gem 'locomotivecms_common', path: '../../common', require: false

# gem 'locomotivecms_steam', path: '../../steam', require: false
# gem 'locomotivecms', path: '../../engine'

# gem 'locomotivecms_search', path: '../../search'

gem 'locomotivecms', github: 'locomotivecms/engine', ref: 'e6fb512c'
gem 'locomotivecms_steam', github: 'locomotivecms/steam', ref: '4386db6', require: false
gem 'locomotivecms_common', github: 'locomotivecms/common', ref: 'c78da158', require: false
# gem 'locomotivecms_search', github: 'locomotivecms/search', ref: '35e5813'
gem 'custom_fields', github: 'locomotivecms/custom_fields', ref: '87bf1b', require: false

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
# gem 'rails', '~> 7.0', '>= 7.0.4.2'
# Use Puma as the app server

# gem 'passenger-rails'

# Use SCSS for stylesheets


# gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
# gem 'uglifier', '>= 4.1.20'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
# gem 'coffee-rails', '~> 5.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
# gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production + Cache


# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'



# gem 'sidekiq'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  gem "debug", ">= 1.0.0"
  gem 'dotenv'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  # gem 'web-console', '>= 3.3.0'
  # gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  # gem 'spring'
  # gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  # gem 'capybara', '~> 2.15'
  # gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  # gem 'chromedriver-helper'
end

group :production do
  # gem 'newrelic_rpm'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
