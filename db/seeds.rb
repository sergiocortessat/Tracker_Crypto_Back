# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
  coins = Coin.create([
      {name: 'Bitcoin', description: 'First crypto ever created'},
      { name: 'Etherum', description: 'First smart contract blockhain' },
      { name: 'Cardano (ADA)', description: 'First.........' },
      { name: 'Uniswap', description: '..................' },
    {name: 'XRP',description: '.........................' },
   { name: 'Polkadot' ,description: '.......................' }
  ])
