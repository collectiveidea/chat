ruby "2.1.5"

source "https://rubygems.org"

gem "rails", "3.0.9"
gem "rake", "0.8.7"

group :production do
  gem "pg"
  gem "dalli", "~> 1.0.5"
end

gem "jquery-rails", "~> 1.0.12"
gem "pusher", "~> 0.8.2"
gem "omniauth", :git => "https://github.com/intridea/omniauth.git"

group :development, :test do
  gem "sqlite3"
  gem "cucumber-rails", "~> 1.0.2", require: false
  gem "database_cleaner", "~> 0.6.7"
  gem "factory_girl_rails", "~> 1.1.0"
  gem "rspec-rails", "~> 2.6.1"
  gem "capybara-webkit", :git => "https://github.com/thoughtbot/capybara-webkit.git"
end
