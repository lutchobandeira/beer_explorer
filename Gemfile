source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "active_model_serializers", "~> 0.10.5"
gem "rails", "~> 5.0.2"
gem "pg", "~> 0.18"
gem "puma", "~> 3.0"
gem "sass-rails", "~> 5.0"
gem "uglifier", ">= 1.3.0"
gem "coffee-rails", "~> 4.2"
gem "jquery-rails"
gem "turbolinks", "~> 5"
gem "jbuilder", "~> 2.5"
gem "brewery_db", "~> 0.2.4"
gem "figaro", "~> 1.1", ">= 1.1.1"
gem "materialize-sass", "~> 0.98.2"
gem "material_icons", "~> 2.2", ">= 2.2.1"
gem "font-awesome-rails", "~> 4.7", ">= 4.7.0.2"
gem "kaminari", "~> 1.0", ">= 1.0.1"
gem "ransack", "~> 1.8", ">= 1.8.2"
gem "paloma", "~> 5.0", ">= 5.0.1"

group :development, :test do
  gem "byebug", platform: :mri
  gem "factory_girl_rails", "~> 4.8"
  gem "faker", "~> 1.7", ">= 1.7.3"
  gem "rspec-rails", "~> 3.5", ">= 3.5.2"
end

group :development do
  gem "web-console", ">= 3.3.0"
  gem "listen", "~> 3.0.5"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

group :test do
  gem "rails-controller-testing", "~> 1.0", ">= 1.0.1"
  gem "shoulda-matchers", git: "https://github.com/thoughtbot/shoulda-matchers.git", branch: "rails-5"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
