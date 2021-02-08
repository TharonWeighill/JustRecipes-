class Recipes_Controller < ApplicationController
    get '/recipes' do 
        @recipes = Recipes.all
        erb :"recipes/index" 
    end 

    post '/recipes' do
       @recipe = Recipe.create(recipe_name: params["recipe_name"], content: params["directions"])
        redirect "/recipes/#{recipe.id}
    end




end 
