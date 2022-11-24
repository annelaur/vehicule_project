# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#

vehicules = Vehicule.create(name: "Mongolfière rouge et jaune" , type_object: "Montgolfière", description: "Mongolfière pour un voyage dans les airs en famille", type_of_person: "famille", vehicule_location: "144 chemin des moulins, Saint-Gaëtien", user: User.first)
Vehicule.create(name: "Trottinette électrique noire", type_object: "Trottinette", description: "Trottinette électrique noire, vitesse maximale 50km/h, fournie avec le matériel de sécurité pour une circulation dans le respect des règles de sécurité routière", type_of_person: "adulte",vehicule_location: "14 rue des écoles, Lyon", user: User.first)
Vehicule.create(name: "Traineau en bois", type_object: "Traineau", description:"traineau en bois pour deux personnes fourni avec attelage", type_of_person: "Famille", vehicule_location: "Laponie", user: User.first)
Vehicule.create(name: "Tricycle rouge", type_object: "Tricycle", description:"tricycle à pédale mécanique", type_of_person: "Famille", vehicule_location: "Paris XIIe", user: User.first)
