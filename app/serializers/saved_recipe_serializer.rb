class SavedRecipeSerializer < ActiveModel::Serializer
  attributes :id, :recipe_id, :user_id, :notes, :tags
end
