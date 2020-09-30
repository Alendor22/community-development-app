require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

solo = Admin.create(name:'Solomon Peña',email:'solomonraulpena@gmail.com',zip:11224)

adeja = Admin.create(name:'Adeja Lendor',email:'adejalendor@gmail.com',zip:10452)

20.times do
    Project.create(title:Faker::Company.name,summary:Faker::Lorem.paragraphs,objective:Faker::Lorem.paragraphs,location:"#{Faker::FunnyName.name} street, brooklyn, NY",admin_id:Admin.all.sample.id)   
end

100.times do
    Contributor.create(name:Faker::FunnyName.name,email:"#{Faker::FunnyName.name}@#{Faker::FunnyName.name}.com",zip:Faker::Number.within(range: 10000..90000))
end

225.times do
    Contribution.create(contributor_id:Contributor.all.sample.id,project_id:Project.all.sample.id,amount:Faker::Number.within(range: 1..90000))
end

puts('seeded successfully!...')