class SavedRecipesController < ApplicationController
    def index
        user = User.all.find(params[:user_id])
        mycookbook = user.recipes
        render :json => mycookbook
    end

    def deleterecipe
        recipe = Recipe.find(params[:recipe][:id])
        recipe.destroy
    end

    
end
