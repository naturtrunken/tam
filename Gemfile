source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'


group :development, :test do

  # DB
  gem 'sqlite3'

  # Debugger
  gem 'debugger'
  #  gem 'binding_of_caller'

  # Model annotation
  gem 'annotate'

  # Better error views.
  gem "better_errors"

  # Analyzer for redundant activerecord queries.
  gem "bullet"
end


group :test do

  # Test framework
  gem 'rspec'
  gem 'rspec-rails'
  gem 'cucumber-rails', :require => false
  gem 'capybara', '1.1.2'

  # For parallel testing on all cpu cores.
  gem "parallel_tests"

  # Factory for creating testing object
  gem 'factory_girl_rails'

  # Generates code coverage statistics.
  gem 'simplecov', :require => false

  # Vacuum cleaner for the test database.
  gem 'database_cleaner'
end


group :production do

  # DB
  gem 'pg'
end
