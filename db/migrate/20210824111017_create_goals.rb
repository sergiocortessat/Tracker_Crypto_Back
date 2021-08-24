class CreateGoals < ActiveRecord::Migration[6.1]
  def change
    create_table :goals do |t|
      t.string :sub
      t.integer :goal

      t.timestamps
    end
  end
end
