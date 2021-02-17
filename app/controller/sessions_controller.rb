class SessionsController < Sinatra::Base
  set :views, Proc.new { File.join(root, "../views") }
  
  #render loign 
  get "/" do
    # redirect "/recipes" if logged_in?
    erb :home
  end 
      
  #login user
  post "/users" do
    user = User.find_by_email(params["username"]["email"])
    if user && user.authenticate(params["username"]["password"])
      session["user_id"] = user.id
      # flash[:success] = "Successfully logged in!"
      redirect "/users/#{@user.id}"
    else
      # flash[:error] = "Invalid credentials"
      redirect '/' 
    end
  end

      
end 
  