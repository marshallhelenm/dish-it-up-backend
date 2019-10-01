class CartItemSerializer < ActiveModel::Serializer
  attributes :id
  has_one :ingredient
  has_one :user
end
