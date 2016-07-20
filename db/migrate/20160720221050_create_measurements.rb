class CreateMeasurements < ActiveRecord::Migration
  def change
    create_table(:measurements) do |t|
      t.column(:quantity, :string)
      t.column(:ingredient_id, :int)
      t.column(:recipe_id, :int)

      t.timestamps()
    end
  end
end
