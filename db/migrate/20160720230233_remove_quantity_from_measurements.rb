class RemoveQuantityFromMeasurements < ActiveRecord::Migration
  def change
    remove_column(:measurements, :quantity, :string)
  end
end
