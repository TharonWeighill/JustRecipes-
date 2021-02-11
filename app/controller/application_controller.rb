class ApplicationController < Sinatra::Base
    set :views, Proc.new { File.join(root, "../views") }

  configure do 
    enable :sessions
    set :session_secret, ENV['SESSION_SECRET']

  end 

  get "/" do
    erb :home
  end 
  
end 
