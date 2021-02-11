
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
  
  #create user
  post '/users' do
    user = User.create(username: params["username"], about: params["about"] )
    redirect "/users/#{user.id}"
  end
  
  #show route for a single user
  get '/users/:id' do
   @user = User.find_by(id: params[:id])
   erb :show
  end
  
  
  #update user
  patch '/users/:id' do
    end 
    
  #delete existing user
  delete '/users/:id' do
  end
    
  #renders form to edit user
  get '/users/:id/edit' do
    erb :edit
  end 
    
end 
  
  
  
