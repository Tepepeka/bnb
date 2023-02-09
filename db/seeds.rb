# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


# destroy_all
City.destroy_all
Dog.destroy_all
Dogsitter.destroy_all
Stroll.destroy_all


# city create
2.times do |i|
    City.create(
        name:Faker::Address.city
    )
    puts "*"*(i+1)
    puts "#{i+1} city(ies) created"
end


# dog create
20.times do |i|
    Dog.create(
        name:Faker::Creature::Dog.name,
        breed:Faker::Creature::Dog.breed,
        city_id:City.all.sample.id
    )
    puts "*"*(i+1)
    puts "#{i+1} dog(s) created"
end


# dogsitter create
6.times do |i|
    Dogsitter.create(
        name:Faker::Name.name,
        city_id:City.all.sample.id
    )
    puts "*"*(i+1)
    puts "#{i+1} dogsitter(s) created"
end


# stroll create
30.times do |i|
    Stroll.create(
        date:Faker::Date.in_date_period,
        place:Faker::Address.street_address,
        dog_id:Dog.all.sample.id,
        dogsitter_id:Dogsitter.all.sample.id
    )
    puts "*"*(i+1)
    puts "#{i+1} stroll(s) created"
end