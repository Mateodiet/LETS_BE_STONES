require 'open-uri'
User.destroy_all
p "all user destroyed"
user = User.create(email: "qql@qql.fr", password: "123456", username: "mat")
p "#{User.count} user created"
Stone.destroy_all
p "all stones destroyed"
Stone.create(name:'Labradorite', description: 'Votre pierre de Labradorite vous inspire à atteindre les étoiles dans votre quête conscience supérieure', price: 5.99, user: user, image:"https://www.123ambre.com/wp-content/uploads/2020/11/labradorite-pierre.jpg")
Stone.create(name:'Emeraude', description: 'Pierre à laquelle on attribue des vertus de protection contre les maladies virales', price: 3.99, user: user, image: "https://www.juwelo.fr/media/wysiwyg/guide-des-pierres/emeraude.jpg")
Stone.create(name:'Œil de Tigre', description: 'La pierre roulée est proche de vous grâce à son petit gabarit.', price: 9.99, user: user, image:"https://static.wixstatic.com/media/101e87_1b07e41f55b54d5489083a21c025a39d~mv2.jpg/v1/fill/w_1000,h_1334,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/101e87_1b07e41f55b54d5489083a21c025a39d~mv2.jpg")
Stone.create(name:'Pierre Roulée Larimar', description: 'La pierre de Larimar, est la pierre de la féminité, elle saura vous procurer une vibration stimulante.', price: 12.99, user: user, image:"https://static.wixstatic.com/media/101e87_7bb7ddd8c3d54428b7c8e65e853e0294~mv2.jpg/v1/fill/w_1000,h_1334,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/101e87_7bb7ddd8c3d54428b7c8e65e853e0294~mv2.jpg")
Stone.create(name:'Pierre Roulée Jaspe Rouge', description: 'La pierre roulée est proche de vous grâce à son petit gabarit et permet ainsi de créer du lien avec elle.', price: 8.99, user: user, image: "https://static.wixstatic.com/media/101e87_5c967884a47244449af0762755af073a~mv2.jpg/v1/fill/w_1000,h_1334,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/101e87_5c967884a47244449af0762755af073a~mv2.jpg")
Stone.create(name:'Pierre Roulée Hématite', description: 'L’Hématite, est une pierre d’ancrage et de renforcement et renforce lenergie yang.', price: 6.99, user: user, image:"https://static.wixstatic.com/media/101e87_2ad559241fc84fbc82e9f3f7dadd70fb~mv2.jpg/v1/fill/w_1000,h_1334,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/101e87_2ad559241fc84fbc82e9f3f7dadd70fb~mv2.jpg")
Stone.create(name:'Pierre Roulée Aventurine', description: 'L’aventurine est connue pour libérer l’esprit.', price: 14.99, user: user, image:"https://static.wixstatic.com/media/101e87_1f909a1388554cbcb9ba18e588fe3024~mv2.jpg/v1/fill/w_1000,h_750,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/101e87_1f909a1388554cbcb9ba18e588fe3024~mv2.jpg")
Stone.create(name:'Pierre Roulée Sélénite', description: 'La sélénite est une pierre apaisante et harmonieuse', price: 11.99, user: user, image:"https://static.wixstatic.com/media/101e87_b136c089eb8b443d8d1f5de0b72bff8e~mv2.jpg/v1/fill/w_1000,h_750,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/101e87_b136c089eb8b443d8d1f5de0b72bff8e~mv2.jpg")
Stone.create(name:'Pierre Roulée Améthyste', description: 'Elle clarifie l’esprit, apporte sérénité et dissipe l’anxiété et les angoisses', price: 16.99, user: user, image:"https://static.wixstatic.com/media/101e87_c4d34f1d04ea45b4a0df9624fd8ed9c6~mv2.jpg/v1/fill/w_1000,h_1334,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/101e87_c4d34f1d04ea45b4a0df9624fd8ed9c6~mv2.jpg")
Stone.create(name:'Collier Cristal De Roche', description: 'amplificateur d’énergie, clarifie le mental, affine notre sensibilité, accompagne une vision nouvelle', price: 30.99, user: user, image:"https://static.wixstatic.com/media/101e87_625b4fb62f4045788bde346b84b67343~mv2.jpg/v1/fill/w_1000,h_1334,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/101e87_625b4fb62f4045788bde346b84b67343~mv2.jpg")

p "#{Stone.count} stones created"
