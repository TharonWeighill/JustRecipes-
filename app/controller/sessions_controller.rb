class SessionsController < ApplicationController
  set :views, Proc.new { File.join(root, "../views") }
  
  #render login
  # get "/" do
  #   redirect "/recipes" if logged_in?
  #   erb :home
  # end 
      
  #login user
  post "/login" do
   
    user = User.find_by_username(params["username"])
    if user && user.authenticate(params["password"])
      session["user_id"] = user.id
      flash[:success] = "Successfully logged in!"
      redirect "/users/#{user.id}"
    else
      flash[:error] = user.errors.messages
      redirect '/' 
    end
  end



  get "/logout" do
    session.clear
    redirect '/'
  end
      
end 0.

























  