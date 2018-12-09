source 'http://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.2'
# Use sqlite3 as the database for Active Record
#gem 'sqlite3'
gem 'pg', '~> 0.21.0'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Additional gem
gem 'rails-i18n', '~> 5.0', '>= 5.0.4'
gem 'devise', '~> 4.3'
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.7'
#gem 'fontawesome-rails', '~> 4.0', '>= 4.0.3.2'
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.2'
gem 'country_select', '~> 3.0'
gem 'jquery-rails', '~> 4.3', '>= 4.3.1'
gem "paperclip", ">= 5.2.0"
#gem 'trix', '~> 0.11.0'
gem 'bootsy', '~> 2.4'
gem 'cancan', '~> 1.6', '>= 1.6.10'
gem 'will_paginate-bootstrap', '~> 1.0', '>= 1.0.1'
gem 'friendly_id', '~> 5.2', '>= 5.2.1'
gem 'social-share-button', '~> 0.10.0'
gem 'omniauth-google-oauth2', '~> 0.5.2'
gem 'omniauth-facebook', '~> 4.0'
# Use ActiveRecord Sessions
gem 'activerecord-session_store', '~> 1.0'
gem 'devise-i18n'
gem 'dotenv-rails', groups: [:development, :test, :production]
#gem 'tinymce-rails'
#gem 'dropzonejs-rails', '~> 0.8.1'
#gem 'loofah', '~> 2.2', '>= 2.2.2'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
#gem 'whenever', '~> 0.10.0', require: false


group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'

end



group :development do
  # For deployment
	gem 'capistrano', '~> 3.10'
	gem 'capistrano-rails', '~> 1.3', '>= 1.3.1'
	#gem 'capistrano-rbenv', '~> 2.1', '>= 2.1.3'
	gem 'capistrano3-puma', github: "seuros/capistrano-puma"
	gem 'capistrano-rvm', '~> 0.1.2'
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  # Use Dotenv for environment variables
  gem 'dotenv', '~> 2.2.1'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
