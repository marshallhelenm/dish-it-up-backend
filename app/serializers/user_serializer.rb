class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :recipes, :pantry_items
end
