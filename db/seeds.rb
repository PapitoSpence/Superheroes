# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
20.times do 
    hero = Hero.create(
        name: Faker::Games::Heroes.name,
        super_name: Faker::Superhero.name
        )
end

50.times do
    power = Power.create(
        name: Faker::Superhero.power,
        description: Faker::Games::Witcher.quote
    )
end

30.times do
    hero_powers = HeroPower.create(
        strength: Faker::Games::Heroes.specialty,
        hero_id: rand(1..20),
        power_id: rand(1..50)
    )
end