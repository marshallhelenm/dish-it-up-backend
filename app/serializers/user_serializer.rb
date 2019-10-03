class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :recipes, :pantry_items, :img_url, :name, :blurb
end
