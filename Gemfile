source 'https://rubygems.org'

gem 'rails',                    '4.1.7'
gem 'rails-api',                '~> 0.3.0'  # lightweight rails app built for apis
gem 'sqlite3',                  '~> 1.3.9'  # for access to the sqlite database
gem 'rack-timeout',             '~> 0.1.0'  # for aborting requests that are taking too long
gem 'jbuilder',                 '~> 2.2.3'  # for creating json structure

group :development do
  gem 'spring',                 '~> 1.1.3'  # for fast rails actions via pre-loading
  gem 'spring-commands-rspec',  '~> 1.0.2'  # for rspec support in spring
  gem 'better_errors',          '~> 2.0.0'  # for better debugging
end

group :development, :test do
  gem 'rspec-rails',            '~> 3.1.0'  # for unit testing
  gem 'factory_girl_rails',     '~> 4.5.0'  # for test data
  gem 'pry-rails',              '~> 0.3.2'  # for interactively exploring objects
  gem 'awesome_print',          '~> 1.2.0'  # required dependency for pry-rails
  gem 'pry',                    '~> 0.10.1' # required dependency for pry-rails
  gem 'binding_of_caller',      '~> 0.7.2'  # optional helper for better_errors
end

group :test do
  gem 'shoulda-matchers',       '~> 2.7.0', require: false  # for common rspec matchers
end

group :staging do
end
