class ApplicationController < Sinatra::Base

  configure do 
    set :public_folder, 'public/stylesheets'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, ENV['SESSION_SECRET']
    register Sinatra::Flash
  end 

  error Sinatra::NotFound do
    erb :error
  end 

  get "/" do
    redirect "/recipes" if logged_in?
    erb :home
  end 

  get "/666" do
    erb :terms
  end 

  helpers do
    
    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    def logged_in?
      !!current_user
    end 

    def redirect_if_not_logged_in
      if !logged_in?
        redirect "/"
      end
    end

    def recipe_owner?(recipe)
      if current_user != recipe.user
        flash[:error] = "Sorry, that recipe doesn't belong to you!" 
      end 
    end

    def comment_owner?(comment)
      if current_user != comment.user
        flash[:error] = "Sorry, you can only edit your comments!"
      end 
    end 
  end 
end






































# class ApplicationController < Sinatra::Base

#   configure do 
#     set :views, 'app/views'
#     enable :sessions
#     set :session_secret, ENV['SESSION_SECRET']
#     register Sinatra::Flash
#   end 

#   error Sinatra::NotFound do
#     erb :error
#   end 

#   get "/" do
#     redirect "/recipes" if current_user
#     erb :home
#     # redirect "/recipes" if logged_in
#     # erb :home
#   end 


#   helpers do
    
#     def current_user
#       @current_user ||= User.find(session[:user_id]) if session[:user_id]
#     end

#     # def logged_in?
#     #   !!current_user
#     # end 

#     def redirect_if_not_logged_in
#       if !logged_in?
#         redirect "/"
#       end
#     end

#     def recipe_owner?(recipe)
#       if current_user != recipe.user
#         flash[:error] = "Sorry, that recipe doesn't belong to you!" 
#       end 
#     end

#     def comment_owner?(comment)
#       if current_user != comment.user
#         flash[:error] = "Sorry, you can only edit your comments!"
#       end 
#     end 
#   end 
# end