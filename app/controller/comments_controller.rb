class CommentsController < ApplicationController
    post '/comments' do     
        recipe=Recipe.find_by(id: params[:recipe_id])
        comment=recipe.comments.build(textbody: params[:comment], username:current_user)
        if comment.save
            redirect "/recipe/#{recipe.id}"
        end 
    end 

end 