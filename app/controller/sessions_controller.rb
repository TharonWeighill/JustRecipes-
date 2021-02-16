class SessionsController < Sinatra::Base
  set :views, Proc.new { File.join(root, "../views") }
  
  #render loign 
  get "/" do
    erb :home
  end 
      
  #login user
  post '/users' do
    @user = User.create(params["username"])
    redirect "/users/#{@user.id}"
  end
      
end 
  