# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Criando as Categorias
categories = Category.create([{name: "Restaurante"}, {name: "Baladinha"}, {name: "Ar Livre"}, {name: "Artes"}, {name: "Jogos online"}])

# Criando Méritos
 merits1 = Merit.create(name: "Primeiro Rôle", points: 3, achievement: "Buddy + 1", image: Rails.root.join("app/assets/images/002-medal-1.png").open)
 merits2 = Merit.create(name: "Bora Curtir!", points: 5, achievement: "Participe de um Evento", image: Rails.root.join("app/assets/images/001-cup.png").open)
 merits3 = Merit.create(name: "Agora Vai!", points: 10, achievement: "Participe de dois Eventos", image: Rails.root.join("app/assets/images/004-trophy-1.png").open)
 merits4 = Merit.create(name: "Baladeiro!", points: 4, achievement: "Participe de um Evento da Categoria Baladinha", image: Rails.root.join("app/assets/images/003-trophy-2.png").open)
 merits5 = Merit.create(name: "Natureba", points: 7, achievement: "Participe de três eventos da Categoria Ar Livre", image: Rails.root.join("app/assets/images/006-badge.png").open)
 merits6 = Merit.create(name: "The Rhythm Of The Night!", points: 15, achievement: "Participe de 10 Eventos", image: Rails.root.join("app/assets/images/007-medal.png").open)