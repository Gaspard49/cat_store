# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Item.delete_all
User.delete_all


10.times do |i|
    Item.create(title:Faker::Creature::Cat.name, description:Faker::Creature::Cat.breed, image_url:faker.image.cats(), price:Faker::Number.decimal(l_digits: 3, r_digits: 2))
end

10.times do |i|
    User.create(first_name:Faker::Name.first_name, last_name:Faker::Name.last_name, email:Faker::Internet.email, zip_code:Faker::Address.zip, city:Faker::Address.city, address:Faker::Address.street_address, phone:Faker::PhoneNumber.cell_phone, encrypted_password:password(min_length = 8, max_length = 16, mix_case = true))
    
end
