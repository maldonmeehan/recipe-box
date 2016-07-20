class AddTimestampsToIngredient < ActiveRecord::Migration
  def change
    add_column(:ingredients, :timestamps, :datetime)
  end
end
