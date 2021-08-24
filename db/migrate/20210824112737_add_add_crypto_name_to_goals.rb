class AddAddCryptoNameToGoals < ActiveRecord::Migration[6.1]
  def change
    add_column :goals, :crypto_name, :string
  end
end
