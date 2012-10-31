remove_file 'Gemfile'

get 'https://raw.github.com/nudesign/rails_template/master/Gemfile', 'Gemfile'

run 'bundle'

generate 'mongoid:config'

generate 'rspec:install'
remove_file 'spec/spec_helper.rb'

get 'https://raw.github.com/nudesign/rails_template/master/spec_helper.rb', 'spec/spec_helper.rb'
get 'https://raw.github.com/nudesign/rails_template/master/controller_macros.rb', 'spec/support/controller_macros.rb'

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
