class ChangeLikesToFavoriteRelationships < ActiveRecord::Migration[6.1]
  def change
    rename_table :likes, :favorite_relationships
  end
end
