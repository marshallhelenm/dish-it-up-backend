class CartItemsController < ApplicationController
    def show_cart
        @user = User.find_by(id: params[:user_id])
        @cart = []
        @user.cart_items.each do |item|
            @cart << item.ingredient_name
        end

        render :json => @cart
        
    end

    def add_to_cart
        @user = User.find_by(id: params[:user_id])
        newItem = CartItem.new(user_id: @user.id, ingredient_name:params[:itemName])
        newItem.save
        
        @cart = []
        @user.cart_items.each do |item|
            @cart << item.ingredient_name
        end
        
        render :json => @cart
    end
    
end
