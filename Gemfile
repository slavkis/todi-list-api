# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.2'

gem 'active_model_serializers'
gem 'dotenv-rails'
gem 'pg', '~> 1.1'
gem 'pry-rails'
gem 'puma', '~> 5.0'
gem 'rack-cors'
gem 'rails', '~> 7.0.7', '>= 7.0.7.2'

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

gem 'bootsnap', require: false

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'rspec-rails'
  gem 'rubocop'
end

group :development do
end
