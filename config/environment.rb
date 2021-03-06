ENV['SINATRA_ENV'] ||= 'development'

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

require 'dotenv/load'
require 'sinatra/flash'
require 'carrierwave'
require 'carrierwave/orm/activerecord'

configure :development do
    set :database, 'sqlite3:db/database.db'
end 



CarrierWave.configure do |config|
    config.root = "app/public"
  end



  
require_all 'app'