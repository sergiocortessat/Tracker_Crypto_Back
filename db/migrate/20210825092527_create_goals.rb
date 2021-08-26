class CreateGoals < ActiveRecord::Migration[6.1]
  def change
    create_table :goals do |t|
      t.references :coin, null: false, foreign_key: true
      t.integer :goal
      t.string :sub

      t.timestamps
    end
  end
end
