source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.4"

gem "active_storage_validations"
gem "acts_as_list"
gem "bootsnap", require: false
gem "image_processing"
gem "mysql2"
gem "puma", "~> 5.0"
gem "rails", "~> 6.1.6"
gem "rails-i18n", "~> 6.0"
gem "rails_admin"
gem "rails_admin-i18n"
gem "sass-rails"
gem "shakapacker"

group :development do
  gem "annotate"
  gem "rack-mini-profiler"
  gem "web-console"
end

group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "factory_bot_rails"
  gem "faker"
  gem "rspec-rails"

  # RuboCop
  gem "rubocop"
  gem "rubocop-rails"
  gem "rubocop-rspec"
  gem "standard", "~> 1.12"
end

group :test do
  gem "shoulda-matchers"
end
