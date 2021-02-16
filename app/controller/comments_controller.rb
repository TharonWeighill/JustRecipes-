class CommentsController < ApplicationController
    post '/comments' do     
        recipe=Recipe.find_by(id: params[:recipe_id])
        comment=recipe.comments.build(textbody: params[:textbody]) #username:current_user
        if comment.save
            redirect "/recipes/#{recipe.id}"
        end 
    end 

end 