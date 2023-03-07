# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "faker"
require "open-uri"

User.destroy_all
Workout.destroy_all
Booking.destroy_all

# Create users
puts "Creating 10 Let's Go users."

user1 = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  username: Faker::Internet.username,
  email: 'test@test.com',
  encrypted_password: '123456',
  date_of_birth: Faker::Date.between(from: '1975-03-06', to: '2005-03-06'),
  about_me: Faker::Quote.famous_last_words,
  fitness_goal: Faker::Movie.quote,
  fitness_level: rand(1..5),
  attendance: rand(1..100),
  avg_rating: rand(1..5),

)

puts "#{user1.username} created."

user2 = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  username: Faker::Internet.username,
  email: Faker::Internet.email,
  encrypted_password: '123456',
  date_of_birth: Faker::Date.between(from: '1975-03-06', to: '2005-03-06'),
  about_me: Faker::Quote.famous_last_words,
  fitness_goal: Faker::Movie.quote,
  fitness_level: rand(1..5),
  attendance: rand(1..100),
  avg_rating: rand(1..5),
)

puts "#{user2.username} created."

user3 = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  username: Faker::Internet.username,
  email: Faker::Internet.email,
  encrypted_password: '123456',
  date_of_birth: Faker::Date.between(from: '1975-03-06', to: '2005-03-06'),
  about_me: Faker::Quote.famous_last_words,
  fitness_goal: Faker::Movie.quote,
  fitness_level: rand(1..5),
  attendance: rand(1..100),
  avg_rating: rand(1..5),
)

puts "#{user3.username} created."

user4 = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  username: Faker::Internet.username,
  email: Faker::Internet.email,
  encrypted_password: '123456',
  date_of_birth: Faker::Date.between(from: '1975-03-06', to: '2005-03-06'),
  about_me: Faker::Quote.famous_last_words,
  fitness_goal: Faker::Movie.quote,
  fitness_level: rand(1..5),
  attendance: rand(1..100),
  avg_rating: rand(1..5),
)

puts "#{user4.username} created."

user5 = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  username: Faker::Internet.username,
  email: Faker::Internet.email,
  encrypted_password: '123456',
  date_of_birth: Faker::Date.between(from: '1975-03-06', to: '2005-03-06'),
  about_me: Faker::Quote.famous_last_words,
  fitness_goal: Faker::Movie.quote,
  fitness_level: rand(1..5),
  attendance: rand(1..100),
  avg_rating: rand(1..5),
)

puts "#{user5.username} created."

user6 = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  username: Faker::Internet.username,
  email: Faker::Internet.email,
  encrypted_password: '123456',
  date_of_birth: Faker::Date.between(from: '1975-03-06', to: '2005-03-06'),
  about_me: Faker::Quote.famous_last_words,
  fitness_goal: Faker::Movie.quote,
  fitness_level: rand(1..5),
  attendance: rand(1..100),
  avg_rating: rand(1..5),
)

puts "#{user6.username} created."

user7 = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  username: Faker::Internet.username,
  email: Faker::Internet.email,
  encrypted_password: '123456',
  date_of_birth: Faker::Date.between(from: '1975-03-06', to: '2005-03-06'),
  about_me: Faker::Quote.famous_last_words,
  fitness_goal: Faker::Movie.quote,
  fitness_level: rand(1..5),
  attendance: rand(1..100),
  avg_rating: rand(1..5),
)

puts "#{user7.username} created."

user8 = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  username: Faker::Internet.username,
  email: Faker::Internet.email,
  encrypted_password: '123456',
  date_of_birth: Faker::Date.between(from: '1975-03-06', to: '2005-03-06'),
  about_me: Faker::Quote.famous_last_words,
  fitness_goal: Faker::Movie.quote,
  fitness_level: rand(1..5),
  attendance: rand(1..100),
  avg_rating: rand(1..5),
)

puts "#{user8.username} created."

# Create workouts
puts "Creating Workouts for ..."
# TODO

# Create bookings
puts "Creating Bookings for ..."
# TODO

# Create ratings
puts "Creating Ratings for ..."
# TODO

# TODO
