

source 'https://rubygems.org'



# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.8'
# Use sqlite3 as the database for Active Record
gem 'sqlite3', group: :development

# gem 'whenever'

gem 'daemons'
gem 'clockwork', require: false

gem 'figaro', group: :development

group :production, :staging do
gem 'pg'
gem 'rails_12factor'
end
#IP message
gem 'twilio-ruby'
gem 'envyable'

#chat faye
gem 'private_pub'
gem 'thin'
gem "cis_rails_chat"


# using whenever gem to handle reminder emails
# gem 'whenever', require: false

# simple calendar gem
gem "simple_calendar" #transferred to the new app
# gem 'mysql2'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

gem 'foundation-rails', '5.4.3.1' #transferred to new app

gem 'faker'             #transferred to new app

gem "google_custom_search_api" #Google search API #transferred to new app

gem "omniauth-google-oauth2" #Google API #transferred to new app

gem 'omniauth-facebook', '1.4.0' #Facebook API for Login #transferred to new app

gem 'responders'

gem 'google-api-client', '~> 0.7.0', require: 'google/api_client'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

gem 'google-search'         # transferred to new project
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin]
