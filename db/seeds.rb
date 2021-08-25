# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

User.create([
  {
    sub: "1",
    email: "ryelbanfield@gmail.com",
    name: "Ryel Banfield",
    given_name: "Ryel",
    family_name: "Banfield",
    picture: "https://picture.jpg"
  },
  {
    sub: "2",
    email: "johndoe@gmail.com",
    name: "John Doe",
    given_name: "John",
    family_name: "Doe",
    picture: "https://picture.jpg"
  }
])

#
coins = Coin.create([
  {name: 'Bitcoin', description: 'First crypto ever created'},
  { name: 'Etherum', description: 'First smart contract blockhain' },
  { name: 'Cardano (ADA)', description: 'First.........' },
  { name: 'Uniswap', description: '..................' },
  {name: 'XRP',description: '.........................' },
  { name: 'Polkadot' ,description: '.......................' }
  ])
  
  Goal.create([{user_id: 1, coin_id: 1, goal: 1}]) 