# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


10.times do
  Drone.create(name:Faker::App.name, model:Faker::Lorem.characters(5), price:Faker::Number.between(50, 800))
end

10.times do
  Rental.create(drone_id: Faker::Number.between(1, 10), client_id: Faker::Number.between(1, 10), checkout: DateTime.now, checkin: DateTime.now+10, review: Faker::Lorem.sentence(3, true, 6))
end

10.times do
  Client.create(username: Faker::Internet.domain_word, password: 'Faker::Lorem.word')
end

Client.create(username: 'lam', password: '123', admin: true)
Client.create(username: 'admin', password: '123', admin: true)
Client.create(username: 'client', password: '123', admin: false)
