# Load the Rails application.
require_relative 'application'

# Load heroku vars from local file
heroku_env = Rails.root.join('config', 'heroku_env.rb')
load(heroku_env) if File.exists?(heroku_env)

# Initialize the Rails application.
Rails.application.initialize!
