remove_file 'Gemfile'

get 'https://github.com/nudesign/rails_template/raw/master/Gemfile', 'Gemfile'

run 'bundle'

generate 'mongoid:config'

generate 'rspec:install'
remove_file 'spec/spec_helper.rb'
get '///Users/tiago/Sites/nudesign/rails_template/spec_helper.rb', 'spec/spec_helper.rb'

generate 'jasmine:install'
generate 'jasmine:examples'

run 'guard init livereload'
run 'guard init rspec'

insert_into_file 'config/environments/development.rb', "\n  config.middleware.insert_before(Rack::Lock, Rack::LiveReload)\n", after: "config.assets.debug = true\n"

generate 'devise:install'
generate 'devise', 'User'

remove_file 'public/index.html'
run 'rails g controller home index --view-specs'

route("root to: 'home#index'")

git :init
git :add => '.'
git :commit => '-m "initial commit"'
