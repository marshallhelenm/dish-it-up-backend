class IngredientsController < ApplicationController

    def addtopantry
        byebug
        user = User.all.find(params[:user_id])
        newItem = Ingredient.create(name: params[:itemName])
        user.ingredients << newItem
        user.save
        pantry = user.ingredients
        render :json => pantry
    end


end
