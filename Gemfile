source 'https://rubygems.org'
ruby '2.2.2'

# Standard Rails gems
gem 'rails', '4.2.2'
gem 'sass-rails', '5.0.3'
gem 'uglifier', '2.7.1'
gem 'coffee-rails', '4.1.0'
gem 'jquery-rails', '4.0.3'
gem 'jquery-ui-rails'
gem 'turbolinks', '2.5.3'
gem 'jbuilder', '2.2.13'
gem 'bcrypt', '3.1.10'

# Necessary for Windows OS (won't install on *nix systems)
gem 'tzinfo-data', platforms: [:mingw, :mswin]

# Kaminari: https://github.com/amatsuda/kaminari
gem 'kaminari', '0.16.3'

# Friendly_id: https://github.com/norman/friendly_id
gem 'friendly_id', '5.1.0'

# Font-awesome: https://github.com/FortAwesome/font-awesome-sass
gem 'font-awesome-sass', '4.3.2.1'

# Bootstrap 3: https://github.com/twbs/bootstrap-sass
gem 'bootstrap-sass', '3.3.4.1'

# Simple form because I like it
gem 'simple_form'
gem 'show_for'
gem 'rails4-autocomplete'

# Adding elasticsearch stuff
gem 'elasticsearch-model'
gem 'elasticsearch-rails'
group :production do
  gem 'bonsai-elasticsearch-rails'
end


group :development, :test do
  gem 'byebug', '4.0.5'
  gem 'web-console', '2.1.2'

  # Figaro: https://github.com/laserlemon/figaro
  gem 'figaro', '1.1.0'

  # Spring: https://github.com/rails/spring
  gem 'spring', '1.3.4'

  # Annotate_Models: https://github.com/ctran/annotate_models
  gem 'annotate', '2.6.8'
end


# SQLite 3
group :development, :test do
  gem 'sqlite3', '1.3.10'
  gem 'cucumber-rails', :require => false
  gem 'database_cleaner'
  gem 'rspec'
end

# Devise: https://github.com/plataformatec/devise
gem 'devise', '3.4.1'

# Redcarpet: https://github.com/vmg/redcarpet
gem 'redcarpet', '3.2.3'

# Rails 12factor for Heroku: https://github.com/heroku/rails_12factor
group :production do
  gem 'rails_12factor'
end

# PostgreSQL gem for Heroku
group :production do
  gem 'pg'
end

# Unicorn: http://unicorn.bogomips.org
group :production do
  gem 'unicorn'
end
