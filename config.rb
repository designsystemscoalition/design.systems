activate :autoprefixer
activate :livereload
activate :sprockets

activate :deploy do |deploy|
  deploy.branch         = 'gh-pages'
  deploy.build_before   = true
  deploy.clean          = true
  deploy.commit_message = 'Automated commit at `timestamp` by middleman-deploy `version`'
  deploy.deploy_method  = :git
  deploy.remote         = 'origin'
  deploy.strategy       = :force_push
end

set :css_dir,    'assets/css'
set :images_dir, 'assets/img'
set :js_dir,     'assets/js'

configure :build do
  activate :minify_css
  activate :minify_javascript
end
