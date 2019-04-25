# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




# Admin
users = User.create([
    {login: "Bothso",  company: "BOTH SOLUTIONS", email: "both.solutions@gmail.com",  password: "AMOSXZIBITDE88", password_confirmation: "AMOSXZIBITDE88"},
    {login: "Skillaps",  company: "SKILLAPS", email: "skillaps@gmail.com",  password: "AMOSXZIBITDE88", password_confirmation: "AMOSXZIBITDE88"},
    {login: "Active",  company: "ACTIVE SOLUTIONS", email: "active.solutions@gmail.com",  password: "AMOSXZIBITDE88", password_confirmation: "AMOSXZIBITDE88"},
    {login: "Kernel",  company: "THEKERNEL", email: "amosxzibitde88@gmail.com",  password: "AMOSXZIBITDE88", password_confirmation: "AMOSXZIBITDE88"}
])

# Contract Type
contract_types = ContractType.create([
    {name: 'Location', description: ''},
    {name: 'Colocation', description: ''},
    {name: 'Vente', description: ''}

])


# Property Type
property_types = PropertyType.create([
    {name: 'Appartement/Chambre', description: ''},
    {name: 'Bureau/Local professionnel', description: ''},
    {name: 'Garage/Parking', description: ''},
    {name: 'Maison/Villa', description: ''},
    {name: 'Studio', description: ''},
    {name: 'Terrain', description: ''},
    {name: 'Propriété agricole', description: ''},
    {name: 'Appartement meublé', description: ''},
    {name: "Chambre d'hôtel", description: ''}

])

# Unity
unities = Unity.create([
    {name: 'An'},
    {name: 'Mois'},
    {name: 'Jours'},
    {name: 'Heure'}

])


# Status
statuses = Status.create([
    {name: "Disponible"},
    {name: "Indisponible"}

])

# Property
properties = Property.create([
    {name: "Appartement à louer à Kalaban Coura", description: '', contract_type_id: contract_types.first.id, property_type_id: property_types.first.id, price: 40000, city: 'Bamako', neighborhood: "Kalaban Coura", status_id: statuses.first.id, unity_id: unities.first.id,user_id: users.last.id},
    {name: "Bureau à louer à Kalaban Coura", description: '', contract_type_id: contract_types.first.id, property_type_id: property_types.first.id, price: 75000, city: 'Bamako', neighborhood: "Kalaban Coura", status_id: statuses.first.id, unity_id: unities.first.id , user_id: users.last.id},
    {name: "Garage à louer à Niamana", description: '', contract_type_id: contract_types.first.id, property_type_id: property_types.first.id, price: 50000, city: 'Bamako', neighborhood: "Niamana", status_id: statuses.first.id, unity_id: unities.first.id , user_id: users.last.id},
    {name: "Villa à louer à Kalaban Coura ACI", description: '', contract_type_id: contract_types.first.id, property_type_id: property_types.first.id, price: 150000, city: 'Bamako', neighborhood: "Kalaban Coura ACI", status_id: statuses.first.id , unity_id: unities.first.id, user_id: users.last.id},
    {name: "Studio à louer à Niamakoro", description: '', contract_type_id: contract_types.first.id, property_type_id: property_types.first.id, price: 10000, city: 'Bamako', neighborhood: "Niamakoro", status_id: statuses.first.id, unity_id: unities.first.id , user_id: users.last.id},
    {name: "Terrain à vendre au Cité UNICEF", description: '', contract_type_id: contract_types.first.id, property_type_id: property_types.first.id, price: 40000000, city: 'Bamako', neighborhood: "Niamakoro", status_id: statuses.first.id, unity_id: unities.first.id, user_id: users.last.id},
    {name: "Terrain pour agriculture", description: '', contract_type_id: contract_types.first.id, property_type_id: property_types.first.id, price: 400000, city: 'Sénou', neighborhood: "Sénou", status_id: statuses.first.id, unity_id: unities.first.id, user_id: users.last.id},
    {name: "Appartement meublé à Kalaban Coura", description: '', contract_type_id: contract_types.first.id, property_type_id: property_types.first.id, price: 25000, city: 'Bamako', neighborhood: "Kalaban Coura", status_id: statuses.first.id, unity_id: unities.first.id, user_id: users.last.id},
    {name: "Appartement meublé à Kalaban Coura", description: '', contract_type_id: contract_types.first.id, property_type_id: property_types.first.id, price: 25000, city: 'Bamako', neighborhood: "Kalaban Coura", status_id: statuses.first.id, unity_id: unities.first.id, user_id: users.last.id},
    {name: "Chambre d'hôtel", description: '', contract_type_id: contract_types.first.id, property_type_id: property_types.first.id, price: 25000, city: 'Bamako', neighborhood: "Kalaban Coura", status_id: statuses.first.id, unity_id: unities.first.id, user_id: users.last.id},
    {name: "Chambre climatisée", description: '', contract_type_id: contract_types.first.id, property_type_id: property_types.first.id, price: 10000, city: 'Bamako', neighborhood: "Kalaban Coura", status_id: statuses.first.id, unity_id: unities.first.id, user_id: users.last.id},
    {name: "studio à Faladie", description: '', contract_type_id: contract_types.first.id, property_type_id: property_types.first.id, price: 10000, city: 'Bamako', neighborhood: "Faladie", status_id: statuses.first.id, unity_id: unities.first.id, user_id: users.last.id},
    {name: "Appartement à louer ", description: '', contract_type_id: contract_types.first.id, property_type_id: property_types.first.id, price: 40000, city: 'Bamako', neighborhood: "Yirimadjo Zerni", status_id: statuses.first.id, unity_id: unities.first.id, user_id: users.last.id},
    {name: "Terrain à vendre", description: '', contract_type_id: contract_types.first.id, property_type_id: property_types.first.id, price: 15000000, city: 'Bamako', neighborhood: "Niamana", status_id: statuses.first.id, unity_id: unities.first.id, user_id: users.last.id},
    {name: "Chambre climatisée", description: '', contract_type_id: contract_types.first.id, property_type_id: property_types.first.id, price: 15000, city: 'Bamako', neighborhood: "Kalaban Coro", status_id: statuses.first.id, unity_id: unities.first.id, user_id: users.last.id},
    {name: "Villa à louer", description: '', contract_type_id: contract_types.first.id, property_type_id: property_types.first.id, price: 125000, city: 'Bamako', neighborhood: "Kalaban Coura", status_id: statuses.first.id, unity_id: unities.first.id, user_id: users.last.id},
    {name: "Maison à vendre", description: '', contract_type_id: contract_types.first.id, property_type_id: property_types.first.id, price: 6000000, city: 'Bamako', neighborhood: "Kalaban Coura", status_id: statuses.first.id, unity_id: unities.first.id, user_id: users.last.id},
    {name: "Bureau à louer", description: '', contract_type_id: contract_types.first.id, property_type_id: property_types.first.id, price: 100000, city: 'Bamako', neighborhood: "Kalaban Coura", status_id: statuses.first.id, unity_id: unities.first.id, user_id: users.last.id},
    {name: "Parking à louer", description: '', contract_type_id: contract_types.first.id, property_type_id: property_types.first.id, price: 75000, city: 'Bamako', neighborhood: "Kalaban Coura", status_id: statuses.first.id, unity_id: unities.first.id, user_id: users.last.id},
    {name: "Chambre de passe", description: '', contract_type_id: contract_types.first.id, property_type_id: property_types.first.id, price: 7000, city: 'Bamako', neighborhood: "Kalaban Coura", status_id: statuses.first.id, unity_id: unities.first.id, user_id: users.last.id},
    {name: "Terrase à louer", description: '', contract_type_id: contract_types.first.id, property_type_id: property_types.first.id, price: 40000, city: 'Bamako', neighborhood: "Kalaban Coura", status_id: statuses.first.id, unity_id: unities.first.id, user_id: users.last.id},
    {name: "Espace à louer", description: '', contract_type_id: contract_types.first.id, property_type_id: property_types.first.id, price: 40000, city: 'Bamako', neighborhood: "Kalaban Coura", status_id: statuses.first.id, unity_id: unities.first.id, user_id: users.last.id},
    {name: "Studio à louer", description: '', contract_type_id: contract_types.first.id, property_type_id: property_types.first.id, price: 7500, city: 'Bamako', neighborhood: "Kalaban Coura", status_id: statuses.first.id, unity_id: unities.first.id, user_id: users.last.id},
    {name: "Colocation d'un appartement", description: '', contract_type_id: contract_types.first.id, property_type_id: property_types.first.id, price: 6000, city: 'Bamako', neighborhood: "Kalaban Coura", status_id: statuses.first.id, unity_id: unities.first.id, user_id: users.last.id},
    {name: "Magasin à louer", description: '', contract_type_id: contract_types.first.id, property_type_id: property_types.first.id, price: 50000, city: 'Bamako', neighborhood: "Kalaban Coura", status_id: statuses.first.id, unity_id: unities.first.id, user_id: users.last.id},
    {name: "Appartement meublé", description: '', contract_type_id: contract_types.first.id, property_type_id: property_types.first.id, price: 15000, city: 'Bamako', neighborhood: "Kalaban Coura", status_id: statuses.first.id, unity_id: unities.first.id, user_id: users.last.id},
    {name: "Garage à louer", description: '', contract_type_id: contract_types.first.id, property_type_id: property_types.first.id, price: 60000, city: 'Bamako', neighborhood: "Kalaban Coura", status_id: statuses.first.id, unity_id: unities.first.id, user_id: users.last.id},
    {name: "Terrain à vendre", description: '', contract_type_id: contract_types.first.id, property_type_id: property_types.first.id, price: 100000000, city: 'Bamako', neighborhood: "Kalaban Coura", status_id: 1, unity_id: unities.first.id, user_id: users.last.id},
    {name: "Verger à louer", description: '', contract_type_id: contract_types.first.id, property_type_id: property_types.first.id, price: 1000000, city: 'Bamako', neighborhood: "Kalaban Coura", status_id: statuses.first.id, unity_id: unities.first.id, user_id: users.last.id},
    {name: "Appartement à louer à Kalaban Coura", description: '', contract_type_id: contract_types.first.id, property_type_id: property_types.first.id, price: 45000, city: 'Bamako', neighborhood: "Kalaban Coura", status_id: statuses.first.id, unity_id: unities.first.id, user_id: users.last.id}
])