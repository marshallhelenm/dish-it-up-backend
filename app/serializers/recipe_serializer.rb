class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :ingredients
end
