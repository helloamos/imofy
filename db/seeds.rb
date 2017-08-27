# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




# Admin
User.create!(id: 1, login: "Bothso",  company: "BOTH SOLUTIONS", email: "both.solutions@gmail.com",  password: "AMOSXZIBITDE88", password_confirmation: "AMOSXZIBITDE88")
User.create!(id: 2, login: "Skillaps",  company: "SKILLAPS", email: "skillaps@gmail.com",  password: "AMOSXZIBITDE88", password_confirmation: "AMOSXZIBITDE88")
User.create!(id: 3, login: "Active",  company: "ACTIVE SOLUTIONS", email: "active.solutions@gmail.com",  password: "AMOSXZIBITDE88", password_confirmation: "AMOSXZIBITDE88")
User.create!(id: 4, login: "Kernel",  company: "THEKERNEL", email: "amosxzibitde88@gmail.com",  password: "AMOSXZIBITDE88", password_confirmation: "AMOSXZIBITDE88")


# Contract Type
ContractType.create!(id: 1, name: 'Location', description: '')
ContractType.create!(id: 2, name: 'Colocation', description: '')
ContractType.create!(id: 3, name: 'Vente', description: '')

# Property Type
PropertyType.create!(id: 1, name: 'Appartement/Chambre', description: '')
PropertyType.create!(id: 2, name: 'Bureau/Local professionnel', description: '')
PropertyType.create!(id: 3, name: 'Garage/Parking', description: '')
PropertyType.create!(id: 4, name: 'Maison/Villa', description: '')
PropertyType.create!(id: 5, name: 'Studio', description: '')
PropertyType.create!(id: 6, name: 'Terrain', description: '')
PropertyType.create!(id: 7, name: 'Propriété agricole', description: '')
PropertyType.create!(id: 8, name: 'Appartement meublé', description: '')
PropertyType.create!(id: 9, name: "Chambre d'hôtel", description: '')
PropertyType.create!(id: 10, name: 'Divers', description: '')

# Unity
Unity.create!(id: 1, name: 'An')
Unity.create!(id: 2, name: 'Mois')
Unity.create!(id: 3, name: 'Jours')
Unity.create!(id: 4, name: 'Heure')

# Status
Status.create!(id: 1, name: "Disponible")
Status.create!(id: 2, name: "Réservé")
Status.create!(id: 3, name: "Indisponible")

# Property
Property.create(id: 1, name: "Appartement à louer à Kalaban Coura", description: '', contract_type_id: 1, property_type_id: 1, price: 40000, city: 'Bamako', neighborhood: "Kalaban Coura", status_id: 1, user_id: 1)
Property.create(id: 2, name: "Bureau à louer à Kalaban Coura", description: '', contract_type_id: 1, property_type_id: 2, price: 75000, city: 'Bamako', neighborhood: "Kalaban Coura", status_id: 1, user_id: 1)
Property.create(id: 3, name: "Garage à louer à Niamana", description: '', contract_type_id: 1, property_type_id: 3, price: 50000, city: 'Bamako', neighborhood: "Niamana", status_id: 1, user_id: 1)
Property.create(id: 4, name: "Villa à louer à Kalaban Coura ACI", description: '', contract_type_id: 1, property_type_id: 4, price: 150000, city: 'Bamako', neighborhood: "Kalaban Coura ACI", status_id: 1, user_id: 1)
Property.create(id: 5, name: "Studio à louer à Niamakoro", description: '', contract_type_id: 1, property_type_id: 5, price: 10000, city: 'Bamako', neighborhood: "Niamakoro", status_id: 1, user_id: 1)
Property.create(id: 6, name: "Terrain à vendre au Cité UNICEF", description: '', contract_type_id: 3, property_type_id: 6, price: 40000000, city: 'Bamako', neighborhood: "Niamakoro", status_id: 1, user_id: 1)
Property.create(id: 7, name: "Terrain pour agriculture", description: '', contract_type_id: 1, property_type_id: 7, price: 400000, city: 'Sénou', neighborhood: "Sénou", status_id: 1, user_id: 1)
Property.create(id: 8, name: "Appartement meublé à Kalaban Coura", description: '', contract_type_id: 1, property_type_id: 8, price: 25000, city: 'Bamako', neighborhood: "Kalaban Coura", status_id: 1, user_id: 1)
Property.create(id: 10, name: "Chambre d'hôtel", description: '', contract_type_id: 1, property_type_id: 9, price: 25000, city: 'Bamako', neighborhood: "Kalaban Coura", status_id: 1, user_id: 1)
Property.create(id: 11, name: "Chambre climatisée", description: '', contract_type_id: 1, property_type_id: 10, price: 10000, city: 'Bamako', neighborhood: "Kalaban Coura", status_id: 1, user_id: 1)
Property.create(id: 12, name: "studio à Faladie", description: '', contract_type_id: 1, property_type_id: 5, price: 10000, city: 'Bamako', neighborhood: "Faladie", status_id: 1, user_id: 1)
Property.create(id: 13, name: "Appartement à louer ", description: '', contract_type_id: 1, property_type_id: 1, price: 40000, city: 'Bamako', neighborhood: "Yirimadjo Zerni", status_id: 1, user_id: 1)
Property.create(id: 14, name: "Terrain à vendre", description: '', contract_type_id: 3, property_type_id: 6, price: 15000000, city: 'Bamako', neighborhood: "Niamana", status_id: 1, user_id: 1)
Property.create(id: 15, name: "Chambre climatisée", description: '', contract_type_id: 1, property_type_id: 10, price: 15000, city: 'Bamako', neighborhood: "Kalaban Coro", status_id: 1, user_id: 1)
Property.create(id: 16, name: "Villa à louer", description: '', contract_type_id: 1, property_type_id: 4, price: 125000, city: 'Bamako', neighborhood: "Kalaban Coura", status_id: 1, user_id: 1)
Property.create(id: 17, name: "Maison à vendre", description: '', contract_type_id: 3, property_type_id: 4, price: 6000000, city: 'Bamako', neighborhood: "Kalaban Coura", status_id: 1, user_id: 1)
Property.create(id: 18, name: "Bureau à louer", description: '', contract_type_id: 1, property_type_id: 2, price: 100000, city: 'Bamako', neighborhood: "Kalaban Coura", status_id: 1, user_id: 1)
Property.create(id: 19, name: "Parking à louer", description: '', contract_type_id: 1, property_type_id: 3, price: 75000, city: 'Bamako', neighborhood: "Kalaban Coura", status_id: 1, user_id: 1)
Property.create(id: 20, name: "Chambre de passe", description: '', contract_type_id: 1, property_type_id: 10, price: 7000, city: 'Bamako', neighborhood: "Kalaban Coura", status_id: 1, user_id: 1)
Property.create(id: 21, name: "Terrase à louer", description: '', contract_type_id: 1, property_type_id: 10, price: 40000, city: 'Bamako', neighborhood: "Kalaban Coura", status_id: 1, user_id: 1)
Property.create(id: 22, name: "Espace à louer", description: '', contract_type_id: 1, property_type_id: 10, price: 40000, city: 'Bamako', neighborhood: "Kalaban Coura", status_id: 1, user_id: 1)
Property.create(id: 23, name: "Studio à louer", description: '', contract_type_id: 1, property_type_id: 5, price: 7500, city: 'Bamako', neighborhood: "Kalaban Coura", status_id: 1, user_id: 1)
Property.create(id: 24, name: "Colocation d'un appartement", description: '', contract_type_id: 2, property_type_id: 1, price: 6000, city: 'Bamako', neighborhood: "Kalaban Coura", status_id: 1, user_id: 1)
Property.create(id: 25, name: "Magasin à louer", description: '', contract_type_id: 1, property_type_id: 2, price: 50000, city: 'Bamako', neighborhood: "Kalaban Coura", status_id: 1, user_id: 1)
Property.create(id: 26, name: "Appartement meublé", description: '', contract_type_id: 1, property_type_id: 8, price: 15000, city: 'Bamako', neighborhood: "Kalaban Coura", status_id: 1, user_id: 1)
Property.create(id: 27, name: "Garage à louer", description: '', contract_type_id: 1, property_type_id: 3, price: 60000, city: 'Bamako', neighborhood: "Kalaban Coura", status_id: 1, user_id: 1)
Property.create(id: 28, name: "Terrain à vendre", description: '', contract_type_id: 3, property_type_id: 6, price: 100000000, city: 'Bamako', neighborhood: "Kalaban Coura", status_id: 1, user_id: 1)
Property.create(id: 29, name: "Verger à louer", description: '', contract_type_id: 1, property_type_id: 10, price: 1000000, city: 'Bamako', neighborhood: "Kalaban Coura", status_id: 1, user_id: 1)
Property.create(id: 30, name: "Appartement à louer à Kalaban Coura", description: '', contract_type_id: 1, property_type_id: 1, price: 45000, city: 'Bamako', neighborhood: "Kalaban Coura", status_id: 1, user_id: 1)
