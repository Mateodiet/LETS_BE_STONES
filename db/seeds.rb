require 'open-uri'
User.destroy_all
p "all user destroyed"
user = User.create(email: "qql@qql.fr", password: "1234556", username: "mat")
p "#{User.count} user created"
Stone.destroy_all
p "all stones destroyed"
stone_1 = Stone.create(name:'labradorite', description: 'ça aide les genoux', price: 5.99, user: user)
stone_2 = Stone.create(name:'caillou 1', description: 'ça aide les pieds', price: 3.99, user: user)
stone_3 = Stone.create(name:'caillou 2', description: 'ça aide la tête', price: 9.99, user: user)
stone_4 = Stone.create(name:'caillou 3', description: 'ça aide les epaules', price: 4.99, user: user)
stone_5 = Stone.create(name:'caillou 4', description: 'ça aide le cul', price: 6.99, user: user)
p "#{Stone.count} stones created"
