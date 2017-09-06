# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'

hip = Restaurant.new(name: "Hip Fish", address: "Gracia north", phone_number: "+34 873 7749372 ", category: "japanese")
hip.save
yummy = Review.new(content: "yummy yummy", rating: 4)
yummy.restaurant = hip
yummy.save

veganese = Restaurant.new(name: "Veganese", address: "Eixample", phone_number: "+34 384 2837483", category: "belgian")
veganese.save
delicious = Review.new(content: "Amazing falafel burger!", rating: 3)
delicious.restaurant = veganese
delicious.save

italian = Restaurant.new(name: "Rikki-Tikki-Tavi", address: "El born", phone_number: "+34 495 7987234", category: "italian")
italian.save
trash = Review.new(content: "Terrible, stay away", rating: 1)
trash.restaurant = italian
trash.save

big_fat = Restaurant.new(name: "Big Fat Trash", address: "Sants", phone_number: "+34 837 7473829", category: "french")
big_fat.save
brilliant = Review.new(content: "This place is sick to death", rating: 5)
brilliant.restaurant = big_fat
brilliant.save

wok_bo = Restaurant.new(name: "Big Wok Lo", address: "Barcelonetta", phone_number: "+34 894 2749483", category: "chinese")
wok_bo.save
nasty = Review.new(content: "This place is nassy", rating: 2)
nasty.restaurant = wok_bo
nasty.save


