class Ingredients_Controller < ApplicationController
    set :views, Proc.new { File.join(root, "../views/ingredients") }
        
    #renders all ingredients
    get '/ingredients' do
        @ingredients = Ingredient.all
        erb :index
    end
    
    #renders a single ingredient
    get '/ingredients/:id' do
        @ingredient = Ingredient.find_by(id: params[:id])
        erb :show
    end
        
    #renders a form to create a new ingredient
    get '/ingredients/new' do
        erb :new
    end
        
    #creates a new ingredient
    post '/ingredients' do
        ingredient = Ingredient.create(ingredient_name: params["ingredient_name"], value: params["value"])
        redirect "/ingredients/#{recipe.id}"
    end
        
    #renders form to edit a ingredient
    get '/ingredient/:id/edit' do
        @ingredient = Ingredient.find_by(id: params[:id])
        erb :edit
    end 
        
    #updates ingredient
    patch '/ingredients/:id' do
        ingredient = Ingredient.find_by(id: params[:id])
        ingredient.update((ingredient_name: params["ingredient_name"], value: params["value"])
        redirect "/ingredients/#{ingredient.id}"
    end 
          
    #delete existing ingredient
    delete '/ingredients/:id' do
    end
            
end 
