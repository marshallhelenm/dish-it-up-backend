class IngredientsController < ApplicationController

    def addtopantry
        user = User.all.find(params[:user_id])
        if params[:itemName].is_a? Array
            params[:itemName].each do |item|
                newItem = Ingredient.create(name: item)
                user.ingredients << newItem
            end
        else 
            newItem = Ingredient.create(name: params[:itemName])
            user.ingredients << newItem
        end
        user.save
        pantry = user.ingredients
        render :json => pantry
    end

    def delete_from_pantry
        @user = User.all.find(params[:user_id])
        items_to_be_deleted = params[:deleteItems]
        @pantry = []
        @user.ingredients.each do |pantry_item|
            boolean = items_to_be_deleted.include?(pantry_item.name) 
            if boolean == true
                pantry_item.destroy 
            else 
                @pantry << pantry_item
            end
        end 

        render :json => @pantry
      
    end


end
