# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Criando as Categorias
categories = Category.create([{name: "Restaurante"}, {name: "Baladinha"}, {name: "Ar Livre"}, {name: "Artes"}, {name: "Jogos online"}])
merits = Merit.create(name: "Primeiro Rôle", points: 3, achievement: "Buddy + 1", image: Rails.root.join("app/assets/images/002-medal-1.png").open)