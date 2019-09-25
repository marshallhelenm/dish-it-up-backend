class PantryItemSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :ingredient_id
end
