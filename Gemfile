source 'https://rubygems.org'

gem 'rails', '~> 4.0.0'

gem 'mongoid', github: 'mongoid/mongoid'

# Assets
gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'

gem 'jquery-rails', '~> 3.0.1'
gem 'dispatcher-rails', '~> 0.0.2'

gem 'turbolinks'
gem 'jbuilder', '~> 1.2'

gem 'devise', github: 'plataformatec/devise'

gem 'mongoid_slug',     '~> 3.1.1'
# gem 'localized_fields', '~> 0.2.0'
gem 'mongoid-textile',  '~> 0.2.0'
gem 'publish',          '~> 0.3.0'

gem 'draper',           '~> 1.2.1'
# gem 'mail_form',        '~> 1.4.1'

# I18n
gem 'devise-i18n', '~> 0.8.5'
gem 'rails-i18n',  '~> 0.7.3'

# MediaMagick
gem 'media_magick', github: 'nudesign/media_magick', branch: 'v0.3'
gem 'mini_magick',  '~> 3.6.0'
gem 'piet',         '~> 0.1.3'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :development, :production do
  # gem 'mongodb_clone', '~> 0.1.0'
end

group :development do
  # Better Errors
  # gem 'better_errors',     '~> 0.8.0'
  # gem 'binding_of_caller', '~> 0.7.0'

  # Log
  gem 'clean_logger',           '~> 0.0.5'
  gem 'mongoid_colored_logger', '~> 0.2.3'

  # LiveReload
  gem 'guard-livereload', '~> 1.4.0'
  gem 'rack-livereload',  '~> 0.3.15'
  gem 'yajl-ruby',        '~> 1.1.0'
end

group :development, :test do
  gem 'factory_girl_rails', '~> 4.2.1'
  gem 'jasmine',            '~> 1.3.2'
  gem 'rspec-rails',        '~> 2.13.2'
  gem 'mongoid-rspec',      '~> 1.8.2'
end

group :test do
  # Guard
  gem 'guard',       '~> 1.8.1'
  gem 'guard-rspec', '~> 3.0.2'
  gem 'guard-spork', '~> 1.5.1'
  gem 'rb-fsevent',  '~> 0.9.3'

  gem 'capybara',         '~> 2.1.0'
  gem 'database_cleaner', '~> 1.0.1'
  gem 'simplecov',        '~> 0.7.1', require: false
end
