source 'https://rubygems.org'

ruby '1.9.3'

gem 'rails', '~> 3.2.0'

gem 'mongoid', '~> 3.1.0'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', '~> 3.2.0'

  gem 'uglifier', '~> 2.0.0'
end

gem 'dispatcher-rails', '~> 0.0.1'
gem 'jquery-rails',     '~> 2.2.0'

gem 'devise',           '~> 2.2.0'
gem 'mongoid_slug',     '~> 3.1.0'
gem 'localized_fields', '~> 0.2.0'
gem 'mongoid-textile',  '~> 0.2.0'
gem 'publish',          '~> 0.3.0'

# I18n
gem 'devise-i18n', '~> 0.8.0'
gem 'rails-i18n',  '~> 0.7.0'

# MediaMagick
gem 'media_magick', '~> 0.2.0'
gem 'mini_magick',  '~> 3.4'
gem 'piet',         '~> 0.1.0'

group :development, :production do
  gem 'mongodb_clone', '~> 0.1.0'
end

group :development do
  # Better Errors
  gem 'better_errors',     '~> 0.8.0'
  gem 'binding_of_caller', '~> 0.7.0'

  # Log
  gem 'clean_logger',           '~> 0.0.1'
  gem 'mongoid_colored_logger', '~> 0.2.0'

  gem 'guard',       '~> 1.7.0'
  gem 'guard-rspec', '~> 2.5.0'
  gem 'rb-fsevent',  '~> 0.9.0'

  # LiveReload
  gem 'guard-livereload', '~> 1.2.0'
  gem 'rack-livereload',  '~> 0.3.0'
  gem 'yajl-ruby',        '~> 1.1.0'
end

group :development, :test do
  gem 'factory_girl_rails', '~> 4.2.0'
  gem 'jasmine',            '~> 1.3.0'
  gem 'rspec-rails',        '~> 2.13.0'
end

group :test do
  gem 'capybara',         '~> 2.1.0'
  gem 'database_cleaner', '~> 0.9.0'
  gem 'simplecov',        '~> 0.7.0', require: false
end
