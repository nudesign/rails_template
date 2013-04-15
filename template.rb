base_url = 'https://raw.github.com/nudesign/rails_template/master'

# gemfile
remove_file 'Gemfile'
get "#{base_url}/Gemfile", 'Gemfile'

run 'bundle update'

# mongoid
generate 'mongoid:config'

# rspec
generate 'rspec:install'
remove_file 'spec/spec_helper.rb'

get "#{base_url}/spec_helper.rb", 'spec/spec_helper.rb'
get "#{base_url}/controller_macros.rb", 'spec/support/controller_macros.rb'

# application layout and default partials
remove_file 'app/views/layouts/application.html.erb'
get "#{base_url}/views/application.html.erb",    'app/views/layouts/application.html.erb'
get "#{base_url}/views/_grid.html.erb",          'app/views/application/_grid.html.erb'
get "#{base_url}/views/_form_messages.html.erb", 'app/views/application/_form_messages.html.erb'

# app stylesheets
remove_file 'app/assets/stylesheets/application.css'
get "#{base_url}/assets/stylesheets/application.css.scss",                    'app/assets/stylesheets/application.css.scss'
get "#{base_url}/assets/stylesheets/reset.css.scss",                          'app/assets/stylesheets/reset.css.scss'
get "#{base_url}/assets/stylesheets/structure.css.scss",                      'app/assets/stylesheets/structure.css.scss'
get "#{base_url}/assets/stylesheets/app_wide_mixins_and_variables.css.scss",  'app/assets/stylesheets/app_wide_mixins_and_variables.css.scss'
get "#{base_url}/assets/stylesheets/fonts.css.scss",                          'app/assets/stylesheets/fonts.css.scss'
get "#{base_url}/assets/stylesheets/flash_messages.css.scss",                 'app/assets/stylesheets/flash_messages.css.scss'
get "#{base_url}/assets/stylesheets/forms.css.scss",                          'app/assets/stylesheets/forms.css.scss'
get "#{base_url}/assets/stylesheets/chromeframe.css.scss",                    'app/assets/stylesheets/chromeframe.css.scss'

# vendors stylesheets
get "#{base_url}/assets/stylesheets/vendor/bootstrap_forms.css",              'vendor/assets/stylesheets/bootstrap_forms.css'
get "#{base_url}/assets/stylesheets/vendor/bootstrap_buttons.css",            'vendor/assets/stylesheets/bootstrap_buttons.css'
get "#{base_url}/assets/stylesheets/vendor/hugrid.css",                       'vendor/assets/stylesheets/hugrid.css'

# vendor javascripts
get "#{base_url}/assets/javascripts/vendor/hugrid.js",                        'vendor/assets/javascripts/hugrid.js'
get "#{base_url}/assets/javascripts/vendor/modernizr.js",                     'vendor/assets/javascripts/modernizr.js'
insert_into_file 'app/assets/javascripts/application.js', "//= require hugrid\n", after: "//= require jquery_ujs\n"
insert_into_file 'app/assets/javascripts/application.js', "//= require modernizr\n", after: "//= require jquery_ujs\n"
insert_into_file 'app/assets/javascripts/application.js', "//= require dispatcher\n", after: "//= require jquery_ujs\n"

#locale files
remove_file 'config/locales'
get "#{base_url}/locales/devise.en.yml",       'config/locales/devise.en.yml'
get "#{base_url}/locales/devise.pt-BR.yml",    'config/locales/devise.pt-BR.yml'
get "#{base_url}/locales/en.yml",              'config/locales/en.yml'
get "#{base_url}/locales/mongoid.pt-BR.yml",   'config/locales/mongoid.pt-BR.yml'
get "#{base_url}/locales/pt-BR.yml",           'config/locales/pt-BR.yml'
get "#{base_url}/locales/publisher.en.yml",    'config/locales/publisher.en.yml'
get "#{base_url}/locales/publisher.pt-BR.yml", 'config/locales/publisher.pt-BR.yml'

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
