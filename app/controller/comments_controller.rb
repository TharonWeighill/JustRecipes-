 class Comments_Controller < ApplicationController
    
          
#     #renders all comments on a recipe
#     get '/recipes/:id/comments' do
#       @comments = Comment.find_by(id: params[:id])
#       erb :show
#     end
    
#     #renders single comment from a recipe
#     get '/recipes/:id/comments/:id' do
#         @comment = Comment.find_by(id: params[:id])
#         erb :index
#     end
      
          
#     #renders a form to create a new recipe
#     get '/recipes/new' do
#         erb :new
#     end
          
#     #creates a new recipe
#     post '/recipes' do
#         recipe = Recipe.create(recipe_name: params["recipe_name"], directions: params["directions"],
#         difficulty: params["difficulty"], cuisine: params["cuisine"], foodpic: params ["foodpic"])
#         redirect "/recipes/#{recipe.id}"
#     end
          
#     #renders form to edit a recipe
#     get '/recipes/:id/edit' do
#         @recipes = Recipe.find_by(id: params[:id])
#         erb :edit
#     end 
          
#     #updates recipe
#     patch '/recipes/:id' do
#         recipe = Recipe.find_by(id: params[:id])
#         recipe.update(recipe_name: params["recipe_name"], directions: params["directions"],
#         difficulty: params["difficulty"], cuisine: params["cuisine"], foodpic: params ["foodpic"])
#         redirect "/recipes/#{user.id}"
#     end 
            
#     #delete existing recipe
#     delete '/recipes/:id' do
#     end
              
end 
            