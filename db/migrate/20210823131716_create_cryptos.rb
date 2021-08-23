class CreateCryptos < ActiveRecord::Migration[6.1]
  def change
    create_table :cryptos do |t|
      t.string :sub
      t.string :name
      t.string :description
      t.integer :amount

      t.timestamps
    end
  end
end
