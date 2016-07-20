class AddIngredientToIngredients < ActiveRecord::Migration
  def change
    add_column(:ingredients, :ingredient, :string)
  end
end
