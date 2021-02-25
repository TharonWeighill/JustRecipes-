class Recipes_Controller < ApplicationController
  set :views, Proc.new { File.join(root, "../views/recipes") }
  

  #route to all recipes
  get '/recipes' do
    @recipes = Recipe.all
    erb :index
  end
  
  #route to create recipe / has a form to create new recipe
  get '/recipes/new' do
    redirect_if_not_logged_in
    erb :new
  end
  
  #show route for a single recipe
  get '/recipes/:id' do
    @recipe = Recipe.find_by(id: params[:id])
    @ingredients = @recipe.ingredients
    @comments = @recipe.comments
    erb :show
  end
 
  #create recipe
  post '/recipes' do
    redirect_if_not_logged_in
    recipe = current_user.recipes.build(params["recipe"])
    if recipe.save
      params["ingredients"].each do |hash|
      if hash["name"] != ""
        ingredient= Ingredient.find_or_create_by(ingredient: hash["ingredient"].capitalize)
        IngredientRecipe.create(ingredient: ingredient, recipe: recipe, value: hash["value"])
      end
    end
    redirect "/recipes/#{recipe.id}"
    else 
      flash[:error] = recipe.errors.full_messages.to_sentence
      redirect "/recipes/new"
    end 
  end
  

  #renders form to edit recipe
  get '/recipes/:id/edit' do
    redirect_if_not_logged_in
    @recipe = Recipe.find_by(id: params[:id])
    if @recipe.user != current_user 
      redirect "/recipes/#{@recipe.id}" 
    end 
    @ingredients = @recipe.ingredients
    erb :edit
  end 
  
  patch '/recipes/:id' do
    recipe = Recipe.find_by(id: params[:id]) 
    if recipe.user != current_user 
      redirect "/recipes/#{recipe.id}" 
    end 
  
    if recipe.update(params["recipe"])
      params["ingredients"].each do |hash|
        if hash["name"] != ""
          ingredient= Ingredient.find_or_create_by(ingredient: hash["ingredient"].capitalize)
          IngredientRecipe.find_or_create_by(ingredient: ingredient, recipe: recipe, value: hash["value"])
        end
      end 
      redirect "/recipes/#{recipe.id}"
    else
      flash[:error] = recipe.errors.full_messages.to_sentence
      redirect "/recipes/#{recipe.id}/edit"
    end 

  end 
  
  


    
  #delete existing user
  delete '/recipes/:id' do
    recipe = Recipe.find_by(id: params[:id])
    recipe.delete
    redirect "/recipes"
  end
    
end
