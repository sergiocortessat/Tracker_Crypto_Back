class CreateMeasurements < ActiveRecord::Migration[6.1]
  def change
    create_table :measurements do |t|
      t.integer :units
      t.string :crypto_name

      t.timestamps
    end
  end
end
