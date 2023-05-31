require 'open-uri'
User.destroy_all
p "all user destroyed"
user = User.create(email: "qql@qql.fr", password: "123456", username: "mat")
p "#{User.count} user created"
Stone.destroy_all
p "all stones destroyed"
Stone.create(name:'Labradorite', description: 'Votre pierre de Labradorite vous inspire à atteindre les étoiles dans votre quête conscience supérieure', price: 5.99, user: user)
Stone.create(name:'Emeraude', description: 'Pierre à laquelle on attribue des vertus de protection contre les maladies virales', price: 3.99, user: user)
Stone.create(name:'Œil de Tigre', description: 'La pierre roulée est proche de vous grâce à son petit gabarit.', price: 9.99, user: user)
Stone.create(name:'Pierre Roulée Sodalite', description: 'La sodalite est la pierre de l’épanouissement et du développement personnel', price: 4.99, user: user)
Stone.create(name:'Pierre Roulée Larimar', description: 'La pierre de Larimar, est la pierre de la féminité, elle saura vous procurer une vibration stimulante.', price: 12.99, user: user)
Stone.create(name:'Pierre Roulée Jaspe Rouge', description: 'La pierre roulée est proche de vous grâce à son petit gabarit et permet ainsi de créer du lien avec elle.', price: 8.99, user: user)
Stone.create(name:'Pierre Roulée Hématite', description: 'L’Hématite, est une pierre d’ancrage et de renforcement et renforce lenergie yang.', price: 6.99, user: user)
Stone.create(name:'Pierre Roulée Calcédoine Bleue', description: 'La Calcédoine bleue, est une pierre de couleur bleue laiteuse et qui incarne douceur et sérénité', price: 9.99, user: user)
Stone.create(name:'Pierre Roulée Aventurine', description: 'L’aventurine est connue pour libérer l’esprit.', price: 14.99, user: user)
Stone.create(name:'Pierre Roulée Sélénite', description: 'La sélénite est une pierre apaisante et harmonieuse', price: 11.99, user: user)
Stone.create(name:'Pierre Roulée Améthyste', description: 'Elle clarifie l’esprit, apporte sérénité et dissipe l’anxiété et les angoisses', price: 16.99, user: user)
Stone.create(name:'Collier Cristal De Roche', description: 'amplificateur d’énergie, clarifie le mental, affine notre sensibilité, accompagne une vision nouvelle', price: 30.99, user: user)
Stone.create(name:'Géode De Quartz', description: 'Elle est idéale si vous souhaitez recharger l’intégralité de vos pierres', price: 26.99, user: user)

p "#{Stone.count} stones created"
