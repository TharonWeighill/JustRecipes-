  class ApplicationController < Sinatra::Base
  set :views, Proc.new { File.join(root, "../views") }

  configure do 
    set :views, 'app/views'
    enable :sessions
    set :session_secret, ENV['SESSION_SECRET']
  end 

  
  error Sinatra::NotFound do
    erb :error
  end 


  helpers do
    def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    def logged_in?
      !!@current_user
    end 

    def recipe_owner?(recipe)
      if current_user != recipe.user
        redirect 
      end 
    end 
   
  end

end