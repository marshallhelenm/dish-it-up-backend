class RecipeSerializer < ActiveModel::Serializer
  attributes :title, :description, :link, :madeBy, :img, :prepTime, :servingSize, :nutrition, :directions, :ingredients
end
