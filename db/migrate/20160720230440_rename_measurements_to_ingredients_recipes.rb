class RenameMeasurementsToIngredientsRecipes < ActiveRecord::Migration
  def change
    rename_table :measurements, :ingredients_recipes
  end
end
