class PantryItemSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :ingredients
end
