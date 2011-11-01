remove_file 'Gemfile'
remove_dir 'test'

gsub_file 'config/application.rb', "require 'rails/all'", <<-requires
require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'active_resource/railtie'
require 'sprockets/railtie'
requires

get 'https://github.com/nudesign/rails_template/raw/master/Gemfile', 'Gemfile'

run 'bundle'

generate 'mongoid:config'

git :init
git :add => '.'
git :commit => '-m "commit inicial"'
