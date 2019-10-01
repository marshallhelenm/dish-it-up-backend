Rails.application.routes.draw do
  resources :cart_items
  resources :recipe_ingredients
  resources :pantry_items
  resources :saved_recipes
  resources :recipes
  resources :ingredients
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'getrecipes', to: 'recipes#get_recipes'
  post 'saverecipe', to: 'recipes#create'
  post 'myrecipes', to: 'saved_recipes#index'
  post 'login', to: 'auth#create'
  post 'signup', to: 'users#create'
  post 'pantry', to: 'pantry_items#index'
  post 'addtopantry', to: 'ingredients#addtopantry'
  post 'cart', to: 'cart_items#show_cart'
  post 'addtocart', to: 'cart_items#add_to_cart'

end
