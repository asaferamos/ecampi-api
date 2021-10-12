source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

gem 'rails', '~> 6.0.0'
gem 'sqlite3', '~> 1.4'
gem 'puma', '~> 4.3'
gem 'pg', '~> 0.18.4'
gem 'redis'
gem 'sidekiq', '~> 5.0'
gem 'faraday'
gem 'devise'
gem 'pry-rails'
gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry-byebug'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'dotenv-rails'
  gem 'rspec-rails'
  gem 'faker'
  gem 'rubocop', require: false
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
