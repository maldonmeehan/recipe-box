class RemoveIngredientFromIngredients < ActiveRecord::Migration
  def change
    remove_column(:ingredients, :ingredient, :varchar)
  end
end
