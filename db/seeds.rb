Comment.destroy_all
Party.destroy_all
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Party.create(title: "Derpia", description: "Trance, House & Jungle party", date: "UTC 2:00 2012-05-15", venue: "The Brickworks", likes: 3)
Party.create(title: "Donut House", description: "House music with DONUTS!", date: "UTC 15:00 2019-07-11", venue: "1015 Folsom", likes: 75)
Party.create(title: "Area 51", description: "Spacetastic Breakbeats!", date: "UTC 20:30 2018-01-01", venue: "The EndUp", likes: 1)

Comment.create(party_id: 1, body: "It was terrible!", likes: 7)
Comment.create(party_id: 3, body: "It was not terrible", likes: 1)
Comment.create(party_id: 2, body: "Was good", likes: 4)

