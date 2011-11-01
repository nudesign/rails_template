remove_file 'Gemfile'
remove_dir 'test'

get 'https://github.com/nudesign/rails_template/raw/master/Gemfile', 'Gemfile'

run 'bundle'

git :init
git :add => '.'
git :commit => '-m "commit inicial"'
