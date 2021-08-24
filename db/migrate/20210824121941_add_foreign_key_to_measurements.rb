class AddForeignKeyToMeasurements < ActiveRecord::Migration[6.1]
  def change
    add_index :goals, :crypto_name, unique: true
    add_foreign_key :measurements, :goals, column: :crypto_name, primary_key: :crypto_name
  end
end
