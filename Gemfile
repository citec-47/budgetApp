source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# Updated Ruby version
ruby '3.2.2'

# Gems compatible with Ruby 3.2.2
gem 'cancancan', '~> 3.2' # Specify a version compatible with Ruby 3.2.2
gem 'devise', '~> 4.8' # Specify a version compatible with Ruby 3.2.2

# Other gems
gem 'bootsnap', require: false
gem 'importmap-rails'
gem 'jbuilder'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'rails', '~> 7.0.4', '>= 7.0.4.3'
gem 'rubocop', '>= 1.0', '< 2.0'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'turbo-rails'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

# Development and test group
group :development, :test do
  gem 'capybara'
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'rails-controller-testing'
  gem 'rspec-rails'
  gem 'webdrivers'
end

group :development do
  gem 'web-console'
end
