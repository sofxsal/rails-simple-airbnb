# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Creating flats"

flat_one = {
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
}

flat_two = {
  name: 'Dark and cosy condo Shanghai',
  address: '340 Jurong East',
  description: 'Small kitchen with 2 toilets',
  price_per_night: 100,
  number_of_guests: 5
}

flat_three = {
  name: 'Hustle bustle Orchard Road',
  address: '20 Stevens Rail',
  description: 'An apartment with open kitchen',
  price_per_night: 100,
  number_of_guests: 5
}

[flat_one, flat_two, flat_three].each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.name}"
end
