# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.destroy_all
Event.destroy_all
Attendance.destroy_all


20.times do |user|
  User.create!(
               first_name: Faker::Name.first_name,
               last_name: Faker::Name.last_name,
               description: Faker::ChuckNorris.fact,
               email: "clodiap@yopmail.com",
               encrypted_password: Faker::Lorem.characters(10) )
end

i = 1
20.times do |event|
  Event.create!(
                title: "Mon super event #{i}",
                description: Faker::Lorem.characters(25),
                price: rand(1...1000),
                location: Faker::Address.city,
                start_date: Faker::Date.forward(23) ,
                duration: 5 * rand(1..120),
                administrator_id: User.all.sample.id)
  i+=1
end

20.times do |attendance|
  Attendance.create!(
                     stripe_customer_id: Faker::Lorem.characters(10),
                     event_id: Event.all.sample.id,
                     attendee_id: User.all.sample.id)
end
