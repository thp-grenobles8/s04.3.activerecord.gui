# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Movie.destroy_all

100.times do |i|
  m = Movie.new
  m.name = Faker::Name.first_name + " à " + Faker::Address.city
  m.year = rand(1900..2010)
  m.genre = ["action", "horreur", "comédie", "drame"].sample
  m.synopsis = Faker::Lorem.sentence(rand(10..20))
  m.director = Faker::Name.last_name
  m.allocine_rating = rand(0.0..5.0).round(1)
  m.my_rating = nil
  m.already_seen = [true, false].sample

  m.save
end
