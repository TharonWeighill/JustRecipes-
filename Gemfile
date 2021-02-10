# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

# gem "rails"

gem 'sinatra'
  gem 'thin'
  gem 'require_all'
  gem 'activerecord', '5.2' , :require =>'active_record'
  gem 'sinatra-activerecord' , :require => 'sinatra/activerecord'
  gem 'rake'
  gem 'bcrypt'
  gem 'email_validater'
  gem 'dotenv'

  group :development do
    gem 'shotgun'
    gem 'tux'
    gem 'pry'
    gem 'sqlite3', '~> 1.3.6'
  end 
    
    
  group :test do
    gem 'corneal'
    gem 'capybara'
  end