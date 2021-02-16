  class ApplicationController < Sinatra::Base
  set :views, Proc.new { File.join(root, "../views") }

  configure do 
    set :views, 'app/views'
    # enable :sessions
    # set :session_secret, ENV['SESSION_SECRET']
  end 
  
  # helper do
  #   def current_user
  #   @current_user ||= User.find(session[:id]) if session[:id]
    
  #   end
  # end

end