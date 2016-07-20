class CreateRecipeBox < ActiveRecord::Migration
  def change
    create_table(:ingredients) do |t|
      t.column(:ingredient, :varchar)

      t.timestamp()
    end
  end
end
