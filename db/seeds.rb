# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

species = %w(dog cat snake bird goat piglet fish)

if Rails.env.development?
  Pet.destroy_all
end

puts "Creating pets"
10.times do
  print "."
  Pet.create!(
    name: Faker::Creature::Dog.name,
    species: species.sample,
    address: Faker::Address.city,
    date: Time.now - 3.days
  )
end
puts "Done"
