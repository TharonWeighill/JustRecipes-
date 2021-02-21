
class IngredientController < Sinatra::Base

    post '/ingredient' do     
        @recipe=Recipe.find_by(id: params[:recipe_id])
        ingredients =  @recipe.ingredients.build(value: params[:value])
        @ingredients = @recipe.ingredients   
    end
end