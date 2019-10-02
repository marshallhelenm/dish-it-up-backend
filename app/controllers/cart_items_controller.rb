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
    
    def delete
        @user = User.find_by(id: params[:user_id])
        items_to_be_deleted = params[:deleteItems]

        @cart = []
        @user.cart_items.each do |item|
            boolean = items_to_be_deleted.include?(item.ingredient_name) 
            if boolean == true
                item.destroy 
            else 
                @cart << item.ingredient_name
            end
        end 

        render :json => @cart
    end
end
