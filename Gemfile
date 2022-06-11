source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.4'

gem 'bootsnap', require: false
gem 'mysql2'
gem 'puma', '~> 5.0'
gem 'rails', '~> 6.1.6'
gem 'sass-rails'
gem 'webpacker'

group :development do
  gem 'rack-mini-profiler'
  gem 'web-console'
end

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]

  # RuboCop
  gem "rubocop"
  gem "rubocop-rails"
  gem "rubocop-rspec"
  gem "standard"
end
