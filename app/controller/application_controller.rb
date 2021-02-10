class ApplicationController < Sinatra::Base
   set :views, Proc.new { File.join(root, "../views") }

  configure do 
    set :views, 'app/views'
   enable :sessions

  end 

  get "/" do
    erb :home
  end 
  
end 
