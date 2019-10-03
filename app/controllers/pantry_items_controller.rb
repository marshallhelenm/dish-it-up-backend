class PantryItemsController < ApplicationController

    def index
        user = User.all.find(params[:user_id])
        pantry = user.ingredients
        render :json => pantry
    end



end
