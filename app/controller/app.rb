class ApplicationController < Sinatra::Base
    set :views, Proc.new { File.join(root, "../views") }

#     get '/' do
#       erb :home 
#     end

#     get '/user/signup' do
#       erb :newuser
#     end

#     get '/user/:id' do
#       erb :user
#     end

#     get '/recipe/newrecipe' do
#       erb :newrecipe 
#     end
    
#     get '/recipe/:id' do
#       erb :recipe
#     end
  
#     get '/myrecipes/:id' do
#       erb :myrecipes      
#     end
  
#     get '/recipe/:id/comment/:id' do
#       erb :recipecomment
#     end 
  
end 