# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

# User.create([
#   {
#     sub: "1",
#     email: "ryelbanfield@gmail.com",
#     name: "Ryel Banfield",
#     given_name: "Ryel",
#     family_name: "Banfield",
#     picture: "https://picture.jpg"
#   },
#   {
#     sub: "2",
#     email: "johndoe@gmail.com",
#     name: "John Doe",
#     given_name: "John",
#     family_name: "Doe",
#     picture: "https://picture.jpg"
#   }
# ])

#
coins = Coin.create([
  {name: 'Bitcoin', description: "Bitcoin, often described as a cryptocurrency, a virtual currency or a digital currency - is a type of money that is completely virtual. It's like an online version of cash. You can use it to buy products and services, but not many shops accept Bitcoin yet and some countries have banned it altogether.", picture:"https://cryptologos.cc/logos/bitcoin-btc-logo.png"},
  { name: 'Etherum', description: "Ethereum is a blockchain platform with its own cryptocurrency, called Ether (ETH) or Ethereum, and its own programming language, called Solidity. As a blockchain network, Ethereum is a decentralized public ledger for verifying and recording transactions. ... Ethereum users pay fees to use dApps.", picture:"https://www.logo.wine/a/logo/Ethereum/Ethereum-Icon-Purple-Logo.wine.svg" },
  { name: 'Cardano (ADA)', description: 'Cardano is a blockchain platform that aims to be a decentralized application (DApp) development platform with a multi-asset ledger and verifiable smart contracts. 4. Cardano is being built in five stages: foundation, decentralization, smart contracts, scaling, and governance.', picture:"https://cryptologos.cc/logos/cardano-ada-logo.png" },
  { name: 'Uniswap', description: "Overview. Uniswap is a decentralized finance protocol that is used to exchange cryptocurrencies and tokens; it is provided on blockchain networks that are decentralized, running open-source software, as opposed to any centralized intermediary.", picture:"https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Uniswap_Logo.svg/1026px-Uniswap_Logo.svg.png" },
  {name: 'XRP',description: "Ripple (XRP) is a peer-to-peer powered cryptocurrency designed to work seamlessly with the Internet to allow a fast, direct and secure way to send payments on the web. ... It is built upon a distributed open Internet protocol, consensus ledger and its own currency called XRP.", picture:"https://cdn.freelogovectors.net/wp-content/uploads/2021/01/xrp-icon-freelogovectors.net_.png" },
  { name: 'Polkadot' ,description: "Polkadot is a software that seeks to incentivize a global network of computers to operate a blockchain on top of which users can launch and operate their own blockchains. ... However, Polkadot, launched in 2020, is among the newest, and it introduces a number of novel technical features toward its ambitious goal.", picture:"https://cryptologos.cc/logos/polkadot-new-dot-logo.png" }
  ])
  
  # Goal.create([{sub: 1, coin_id: 1, goal: 1}]) 
  # Measurement.create([{user_id: 1, goal_id: 1, unit: 0.2}])