class Recipes_Controller < ApplicationController
    set :views, Proc.new { File.join(root, "../views/recipes") }
   
    get '/recipes' do
        @recipes = Recipe.all
        erb :index
    end

    get '/recipes/new' do
        erb :new
        
    end

    post '/recipes' do
       @recipe = Recipe.create(recipe_name: params["recipe_name"], content: params["directions"])
        redirect "/recipes/"
    end




end 
