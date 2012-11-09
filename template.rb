# gemfile
remove_file 'Gemfile'
get 'https://raw.github.com/nudesign/rails_template/master/Gemfile', 'Gemfile'

run 'bundle update'

# mongoid
generate 'mongoid:config'

# rspec
generate 'rspec:install'
remove_file 'spec/spec_helper.rb'

get 'https://raw.github.com/nudesign/rails_template/master/spec_helper.rb', 'spec/spec_helper.rb'
get 'https://raw.github.com/nudesign/rails_template/master/controller_macros.rb', 'spec/support/controller_macros.rb'

# application layout
remove_file 'app/views/layouts/application.html.erb'
get 'https://raw.github.com/nudesign/rails_template/master/views/application.html.erb', 'app/views/layouts/application.html.erb'

# app stylesheets
remove_file 'app/assets/stylesheets/application.css'
get 'https://raw.github.com/nudesign/rails_template/master/assets/stylesheets/application.css.scss',                    'app/assets/stylesheets/application.css.scss'
get 'https://raw.github.com/nudesign/rails_template/master/assets/stylesheets/reset.css.scss',                          'app/assets/stylesheets/reset.css.scss'
get 'https://raw.github.com/nudesign/rails_template/master/assets/stylesheets/structure.css.scss',                      'app/assets/stylesheets/structure.css.scss'
get 'https://raw.github.com/nudesign/rails_template/master/assets/stylesheets/app_wide_mixins_and_variables.css.scss',  'app/assets/stylesheets/app_wide_mixins_and_variables.css.scss'
get 'https://raw.github.com/nudesign/rails_template/master/assets/stylesheets/fonts.css.scss',                          'app/assets/stylesheets/fonts.css.scss'
get 'https://raw.github.com/nudesign/rails_template/master/assets/stylesheets/flash_messages.css.scss',                 'app/assets/stylesheets/flash_messages.css.scss'

# vendors stylesheets
get 'https://raw.github.com/nudesign/rails_template/master/assets/stylesheets/vendor/bootstrap_forms.css',              'vendor/assets/stylesheets/bootstrap_forms.css'
get 'https://raw.github.com/nudesign/rails_template/master/assets/stylesheets/vendor/bootstrap_buttons.css',            'vendor/assets/stylesheets/bootstrap_buttons.css'
get 'https://raw.github.com/nudesign/rails_template/master/assets/stylesheets/vendor/hugrid.css',                       'vendor/assets/stylesheets/hugrid.css'

# vendor javascripts
insert_into_file 'app/assets/javascripts/application.js', "//= require dispatcher\n", after: "//= require jquery_ujs\n"

# generators
generate 'jasmine:install'

run 'guard init livereload'
run 'guard init rspec'

insert_into_file 'config/environments/development.rb', "\n  config.middleware.insert_before(Rack::Lock, Rack::LiveReload)\n", after: "config.assets.debug = true\n"

generate 'devise:install'
generate 'devise', 'User'

# remove unnecessary files
remove_file 'public/index.html'
remove_file 'app/assets/images/rails.png'

# add default home controller and route
run 'rails g controller home index --view-specs'
route("root to: 'home#index'")

# initialize git repository
git :init
git :add => '.'
git :commit => '-m "initial commit"'
