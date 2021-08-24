class AddForeignKeyToUsers < ActiveRecord::Migration[6.1]
  def change
    add_index :users, :sub, unique: true
    add_foreign_key :cryptos, :users, column: :sub, primary_key: :sub
  end
end
