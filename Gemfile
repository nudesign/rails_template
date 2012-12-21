source 'https://rubygems.org'

ruby '1.9.3'

gem 'rails', '~> 3.2.0'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'mongoid', '~> 3.0.0'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', '~> 3.2.0'

  gem 'uglifier', '~> 1.3.0'
end

gem 'dispatcher-rails', '~> 0.0.1'
gem 'jquery-rails', '~> 2.1.0'

gem 'devise',           '~> 2.1.0'
gem 'localized_fields', '~> 0.2.0'
gem 'mongoid-textile',  '~> 0.2.0'
gem 'publish',          '~> 0.1.0'

# I18n
gem 'devise-i18n', '~> 0.5.0'
gem 'rails-i18n',  '~> 0.7.0'

# MediaMagick
gem 'media_magick', '~> 0.1.0'
gem 'mini_magick',  '~> 3.4'
gem 'piet',         '~> 0.1.0'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'

group :development, :production do
  gem 'mongodb_clone', '~> 0.0.1'
end

group :development do
  gem 'guard',       '~> 1.5.0'
  gem 'guard-rspec', '~> 2.1.0'
  gem 'rb-fsevent',  '~> 0.9.0'

  gem 'mongoid_colored_logger', '~> 0.2.2'

  gem 'nu-generators', '~> 0.0.2'

  # LiveReload
  gem 'guard-livereload', '~> 1.1.0'
  gem 'rack-livereload',  '~> 0.3.0'
  gem 'yajl-ruby',        '~> 1.1.0'

  gem 'better_errors',    '~> 0.3.2'
end

group :development, :test do
  gem 'factory_girl_rails', '~> 4.1.0'
  gem 'jasmine',            '~> 1.2.0'
  gem 'rspec-rails',        '~> 2.11.0'
  gem 'capybara',           '>= 1.1.2'
end

group :test do
  gem 'database_cleaner', '~> 0.9.1'
  gem 'simplecov',        '~> 0.7.0', require: false
end
