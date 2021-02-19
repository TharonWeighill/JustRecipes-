class CommentsController < ApplicationController
    post '/comments' do     
        @recipe=Recipe.find_by(id: params[:recipe_id])
      comment =  @recipe.comments.build(textbody: params[:textbody])
      @comments=@recipe.comments
   
        if comment.save
            redirect "/recipes/#{@recipe.id}"
        end 
    end 

end 