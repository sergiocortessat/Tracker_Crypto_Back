class CreateCryptos < ActiveRecord::Migration[6.1]
  def change
    create_table :cryptos do |t|
      t.string :sub
      t.integer :amount
      t.string :coin_id
      t.timestamps
    end
  end
end
