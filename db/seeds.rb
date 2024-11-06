# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Start seeding ... "

kitten_names = [ "Poppy", "Bella", "Misty", "Molly", "Daisy", "Tilly" ]

kitten_names.each do |kitten|
  Kitten.find_or_create_by!(
    name: kitten,
    age: rand(12) + 1,
    cuteness: rand(10) + 1,
    softness: rand(10) + 1,
  )
end


puts "Ok. Seeding completed"
