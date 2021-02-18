ENV['SINATRA_ENV'] ||= 'development'

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

require 'dotenv/load'
require 'sinatra/flash'


configure :development do
    set :database, 'sqlite3:db/database.db'

end 
require_all 'app'