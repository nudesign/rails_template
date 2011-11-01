source "http://rubygems.org"

gem "rails", "3.1.1"

# Bundle edge Rails instead:
# gem "rails", :git => "git://github.com/rails/rails.git"

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem "uglifier", ">= 1.0.3"
end

gem "mongoid"
gem "bson_ext"

gem "jquery-rails"
gem "devise"
# gem "publish"
gem "mongoid_slug"
gem "attachment_magick"
gem "kaminari", "0.12.4"

# To use ActiveModel has_secure_password
# gem "bcrypt-ruby", "~> 3.0.0"

# Use unicorn as the web server
# gem "unicorn"

# Deploy with Capistrano
# gem "capistrano"

# To use debugger
# gem "ruby-debug19", :require => "ruby-debug"

group :production do
  gem "execjs", "~> 1.2.9"
  gem "therubyracer", "~> 0.9.4"
end

group :development, :test do
  gem "rspec-rails"
end

group :test do
  gem "database_cleaner"
  gem "factory_girl_rails"
  gem "ffaker"
  gem "growl_notify", :require => false if RUBY_PLATFORM =~ /darwin/i
  gem "guard-rspec"
  gem "mongoid-rspec"
  gem "rb-fsevent", :require => false if RUBY_PLATFORM =~ /darwin/i
  gem "simplecov", :require => false
  gem "capybara"
  gem "shoulda-matchers"
end
