class Users_Controller < ApplicationController
  set :views, Proc.new { File.join(root, "../views/recipes") }
    
  #renders all recipes
  get '/recipes' do
    @recipe = Recipe.all
    erb :index
  end

  #renders a single recipe
  get '/recipes/:id' do
    @recipe = Recipe.find_by(id: params[:id])
    erb :show
  end
    
  #renders a form to create a new recipe
  get '/recipes/new' do
    erb :new
  end
    
  #creates a new recipe
  post '/recipes' do
    recipe = Recipe.create(recipe_name: params["recipe_name"], directions: params["directions"],
    difficulty: params["difficulty"], cuisine: params["cuisine"], foodpic: params ["foodpic"])
    redirect "/recipes/#{recipe.id}"
  end
    
  #renders form to edit a recipe
  get '/recipes/:id/edit' do
    @recipes = Recipe.find_by(id: params[:id])
    erb :edit
  end 
    
  #updates recipe
  patch '/recipes/:id' do
    recipe = Recipe.find_by(id: params[:id])
    recipe.update(recipe_name: params["recipe_name"], directions: params["directions"],
    difficulty: params["difficulty"], cuisine: params["cuisine"], foodpic: params ["foodpic"])
    redirect "/recipes/#{user.id}"
  end 
      
  #delete existing recipe
  delete '/recipes/:id' do
  end
        
end 
      
    
    
    
      
    
    
  