source 'https://rubygems.org'

ruby "1.9.3"

# Rails
gem 'rails', '3.2.11'

# Postgres
gem 'pg'

# Elastic search
#gem 'tire'


# Pagination
gem 'kaminari'

# Error pages
gem 'goalie'

# Markdown
gem 'redcarpet'

# Code coloring
gem 'pygmentize'

gem 'figaro'

# new relic - monitoring
gem 'newrelic_rpm'

group :assets do
  # Stylesheet
  gem 'sass', '~> 3.2.0.alpha.277'
  gem 'sass-rails'
  gem 'bourbon'

  # Javascript
  gem 'coffee-rails'
  gem 'uglifier'
  gem 'jquery-rails'
  # Assets
  gem 'asset_sync'
end

group :development do
  gem 'sqlite3'
  gem 'quiet_assets'
  gem 'foreman'
end

group :test do
  gem 'miniskirt'
  gem 'minitest'
  gem 'capybara'
  gem 'turn'
  gem 'simplecov', :require => false
end

group :production do

  # unicorn
  gem 'unicorn'

  # Memcached
  gem 'dalli'
end
