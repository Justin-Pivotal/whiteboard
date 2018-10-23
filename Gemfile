source 'https://rubygems.org'

ruby '2.3.5'

gem 'rails', '~> 5.2'

gem 'mysql2', '~> 0.5.2'
gem 'unicorn'
gem 'jquery-rails'
gem 'omniauth-saml'
gem 'github-markdown', require: 'github/markdown'
gem 'sass-rails'
gem 'compass-rails'
gem 'coffee-rails'
gem 'uglifier'
gem 'bootstrap-sass', '~> 3.3.5.1'
gem 'font-awesome-sass-rails'
gem 'evaporator', '~> 0.2.0', git: 'https://github.com/Justin-Pivotal/evaporator'
gem 'newrelic_rpm'
gem 'sentry-raven'
gem 'responders', '~> 2.0'
gem 'nokogiri', '1.8.2'
gem 'loofah', '2.2.2'
gem 'rails-html-sanitizer', '1.0.4'

group :development, :production do
  gem 'rails_12factor'
end

group :test, :development do
  gem 'minitest'
  gem 'rspec-rails', '~> 3.1'
  gem 'shoulda-matchers', '~> 3.1'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'capybara'
  gem 'capybara-webkit'
  gem 'launchy'
  gem 'database_cleaner'
  gem 'letter_opener'
  gem 'timecop'
  gem 'foreman'
  gem 'fakefs', :require => 'fakefs/safe'
  gem 'dotenv-rails'
  gem 'pry-rails'
  gem 'byebug'
  gem 'rails-controller-testing'
end

group :test do
  gem 'codeclimate-test-reporter', require: nil
  gem 'selenium-webdriver'
end

group :development do
  gem 'auto_tagger'
  gem 'better_errors'
  gem 'binding_of_caller'
end
