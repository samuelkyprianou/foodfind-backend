# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

a = User.create(first_name: "Sam", last_name: "Kyp", email: "sam@h.com", password: "blah", username: "samkipper")

b = Restaurant.create(name: "Arpan Family Dining Bar", cuisine: "Indian", picture: "https://b.zmtcdn.com/data/pictures/chains/2/32432/b4c3870cddd397c0e8519b35af52de76.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A", zomato_id: 32432, longitude: 72.9269316047, latitude: 19.1111460672)

Favourite.create(user: a, restaurant: b)