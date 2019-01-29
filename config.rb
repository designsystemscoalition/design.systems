activate :autoprefixer
activate :directory_indexes
activate :livereload

activate :deploy do |deploy|
  deploy.branch         = 'gh-pages'
  deploy.build_before   = true
  deploy.clean          = true
  deploy.commit_message = 'Automated commit at `timestamp` by middleman-deploy `version`'
  deploy.deploy_method  = :git
  deploy.remote         = 'origin'
  deploy.strategy       = :force_push
end

set :css_dir,        'assets/css'
set :images_dir,     'assets/img'
set :js_dir,         'assets/js'

ignore "/slack/.git"
ignore "/slack/README"

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :relative_assets
  set :relative_links, true

  activate :minify_html do |html|
    html.remove_multi_spaces        = true   # Remove multiple spaces
    html.remove_comments            = true   # Remove comments
    html.remove_intertag_spaces     = false  # Remove inter-tag spaces
    html.remove_quotes              = false  # Remove quotes
    html.simple_doctype             = false  # Use simple doctype
    html.remove_script_attributes   = false  # Remove script attributes
    html.remove_style_attributes    = false  # Remove style attributes
    html.remove_link_attributes     = false  # Remove link attributes
    html.remove_form_attributes     = false  # Remove form attributes
    html.remove_input_attributes    = false  # Remove input attributes
    html.remove_javascript_protocol = false  # Remove JS protocol
    html.remove_http_protocol       = false  # Remove HTTP protocol
    html.remove_https_protocol      = false  # Remove HTTPS protocol
    html.preserve_line_breaks       = false  # Preserve line breaks
    html.simple_boolean_attributes  = true   # Use simple boolean attributes
    html.preserve_patterns          = nil    # Patterns to preserve
  end
end
