class AddColumnToCoins < ActiveRecord::Migration[6.1]
  def change
    add_column :coins, :picture, :string
  end
end
