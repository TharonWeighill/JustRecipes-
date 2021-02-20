class Users_Controller < ApplicationController
  set :views, Proc.new { File.join(root, "../views/users") }
  
  #route to all users 
  get '/users' do
    @users = User.all
    erb :index
  end
  #show route for a single user
  get '/users/:id' do
    # redirect_if_not_logged_in
    @user = User.find_by(id: params[:id])
    erb :show
  end
  
  #route to create user / has a form to create new user
  get '/signup' do
    erb :signup
  end
  
  #create user
  post '/signup' do
  
    user = User.create(params["user"])
    if user.valid?
      flash[:success] = "User Created!"
      session["user_id"] = user.id
      redirect "/users/#{user.id}"
    else 
      flash[:error] = user.errors.full_messages.to_sentence 
      redirect '/signup'
    end 
  end
    
  #renders form to edit user
  get '/users/:id/edit' do
    # redirect_if_not_logged_in
    @user = User.find_by(id: params[:id])
    erb :edit
  end 
  
  #update user
  patch '/users/:id' do
    user = User.find_by(id: params[:id])
    user.update(@params["user"])
    redirect "/users/#{user.id}"
  end 
    
  #delete existing user
  delete '/users/:id' do
    user = User.find_by(id: params[:id])
    user.delete
    redirect "/"
  
  end
    
end 
  
  
  
