# Load the rails application
require File.expand_path('../application', __FILE__)

# Manually Set Rails Environment
Rails.env = "production"

# Initialize the rails application
Opal::Application.initialize!
