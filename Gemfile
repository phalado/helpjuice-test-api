source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.2"

gem "rails", "~> 7.0.4"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
gem "rack-cors"
gem 'searchkick', '~> 5.1', '>= 5.1.1'
gem "elasticsearch", "< 7.14"

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem 'rspec-rails', '~> 6.0', '>= 6.0.1'
  gem 'factory_bot_rails', '~> 6.2'
  gem 'faker', '~> 3.1'
end

group :development do
  gem 'guard-rspec', '~> 4.7', '>= 4.7.3'
end

group :test do
  gem 'shoulda-matchers', '~> 5.3'
  gem 'database_cleaner', '~> 2.0', '>= 2.0.1'
end
