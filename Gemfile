source 'https://rubygems.org'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
ruby '2.2.2'
gem 'rails', '4.2.6'
gem 'nokogiri'
gem 'rails-backbone', github:'codebrew/backbone-rails', branch: 'master'
gem 'pg'
gem 'rake', '< 11'
#pagination gems
gem 'will_paginate'
gem 'ajax_pagination'
gem 'jquery-historyjs'
gem 'httparty'


gem 'sprockets-rails', :require => 'sprockets/railtie'
gem 'bootstrap-sass'

gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'jquery-rest-rails'
gem 'jquery-turbolinks'


gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0',          group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use debugger
# gem 'debugger', group: [:development, :test]
group :production do
  gem 'rails_12factor'
end
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin]
group :development, :test do
# gem 'thin'
  gem 'factory_girl_rails'
# gem 'debugger'
# gem 'debugger-ruby_core_source' #, github: 'cldwalker/debugger-ruby_core_source'
  gem 'populator'
  gem 'rspec-rails', '~> 2.0'
  gem 'capybara'
  gem 'gem-open'
end
