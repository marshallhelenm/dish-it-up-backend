class SavedRecipesController < ApplicationController
    def index
        user = User.all.find(params[:user_id])
        myrecipes = user.recipes
        render :json => myrecipes

    end

    
end
