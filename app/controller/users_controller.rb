class Users_Controller < ApplicationController
  set :views, Proc.new { File.join(root, "../views/users") }
  
  #route to all users 
  get '/users' do
    @users = User.all
    erb :index
  end
  
  #route to create user / has a form to create new user
  get '/users/new' do
    erb :new
  end
  
  #show route for a single user
  get '/users/:id' do
    @user = User.find_by(id: params[:id])
    erb :show
  end
  
  #create user
  post '/users' do
    user = User.create(params["username"])
    redirect "/users/#{user.id}"
  end
  

  #renders form to edit user
  get '/users/:id/edit' do
    @user = User.find_by(id: params[:id])
    erb :edit
  end 
  
  #update user
  patch '/users/:id/edit' do
    user = User.find_by(id: params[:id])
    user.update(params["username"])
    redirect "/users/#{user.id}"
    end 
    
  #delete existing user
  delete '/users/:id' do
  end
    
end 
  
  
  
