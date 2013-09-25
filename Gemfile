source 'https://rubygems.org'

ruby '2.0.0'

gem 'rails', '~> 4.0'

# persistence
gem 'pg'

# authentication
# gem 'sorcery'

gem 'ember-rails'
gem 'ember-source', '1.0.0' # or the version you need
gem 'hamlbars', '~> 2.0'

# frontend/markup
gem 'haml-rails'

# frontend/stylesheets
gem 'sass-rails'
gem 'compass-rails', github: 'milgner/compass-rails', branch: 'rails4'

# frontend/assets
gem 'uglifier', '>= 1.3.0'

# frontend/javascript
gem 'coffee-rails'
gem 'jquery-rails'
gem 'execjs'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
# gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'quiet_assets'
end

group :development, :test do
  gem 'rspec-rails'
  gem 'rspec-instafail'
  gem 'jasminerice', git: 'https://github.com/bradphelan/jasminerice.git'
  gem 'guard-jasmine'
end

group :non_travis do
  gem 'pry-debugger'
end

group :test do
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'launchy'
  gem 'poltergeist'
  gem 'shoulda-matchers'
  gem 'simplecov', require: false
  gem 'timecop'
end
