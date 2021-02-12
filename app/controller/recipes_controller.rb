 class Recipes_Controller < ApplicationController
  set :views, Proc.new { File.join(root, "../views/recipes") }
  

  #route to all recipes
  get '/recipes' do
    @recipes = Recipe.all
    erb :index
  end
  
  #route to create recipe / has a form to create new recipe
  get '/recipes/new' do
    erb :new
  end
  
  #show route for a single recipe
  get '/recipes/:id' do
    @recipe = Recipe.find_by(id: params[:id])
    erb :show
  end
 
  #create recipe
  post '/recipes' do
    recipe = Recipe.create(params["recipe_name"])
    redirect "/recipes/#{recipe.id}"
  end
  

  #renders form to edit recipe
  get '/recipes/:id/edit' do
    @recipe = Recipe.find_by(id: params[:id])
    erb :edit
  end 
  
  #update recipe
  patch '/recipes/:id/edit' do
    recipe = Recipe.find_by(id: params[:id])
    recipe.update(params["recipe_name"])
    redirect "/recipes/#{recipe.id}"
    end 
    
  #delete existing user
  delete '/recipes/:id' do
  end
    
end 
  
  
  

    
    
      
    
    
  