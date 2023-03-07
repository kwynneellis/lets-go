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
  first_name: 'Sarah',
  last_name: Faker::Name.last_name,
  username: 'sedentary_sarah',
  email: 'sarah@test.com',
  password: '123456',
  date_of_birth: Faker::Date.between(from: '1975-03-06', to: '2005-03-06'),
  about_me: Faker::Quote.famous_last_words,
  fitness_goal: Faker::Movie.quote,
  fitness_level: rand(1..5),
  attendance: rand(1..100),
  avg_rating: rand(1..5),

)

puts "#{user1.username} created."

user2 = User.create!(
  first_name: 'Lindsay',
  last_name: Faker::Name.last_name,
  username: 'lazy_lindsay',
  email: 'lindsay@test.com',
  password: '123456',
  date_of_birth: Faker::Date.between(from: '1975-03-06', to: '2005-03-06'),
  about_me: Faker::Quote.famous_last_words,
  fitness_goal: Faker::Movie.quote,
  fitness_level: rand(1..5),
  attendance: rand(1..100),
  avg_rating: rand(1..5),
)

puts "#{user2.username} created."

user3 = User.create!(
  first_name: 'Lucy',
  last_name: Faker::Name.last_name,
  username: 'lethargic_lucy',
  email: 'lucy@test.com',
  password: '123456',
  date_of_birth: Faker::Date.between(from: '1975-03-06', to: '2005-03-06'),
  about_me: Faker::Quote.famous_last_words,
  fitness_goal: Faker::Movie.quote,
  fitness_level: rand(1..5),
  attendance: rand(1..100),
  avg_rating: rand(1..5),
)

puts "#{user3.username} created."

user4 = User.create!(
  first_name: 'Fiona',
  last_name: Faker::Name.last_name,
  username: 'flagging_fiona',
  email: 'fiona@test.com',
  password: '123456',
  date_of_birth: Faker::Date.between(from: '1975-03-06', to: '2005-03-06'),
  about_me: Faker::Quote.famous_last_words,
  fitness_goal: Faker::Movie.quote,
  fitness_level: rand(1..5),
  attendance: rand(1..100),
  avg_rating: rand(1..5),
)

puts "#{user4.username} created."

user5 = User.create!(
  first_name: 'Sandra',
  last_name: Faker::Name.last_name,
  username: 'sleepy_sandra',
  email: 'sandra@test.com',
  password: '123456',
  date_of_birth: Faker::Date.between(from: '1975-03-06', to: '2005-03-06'),
  about_me: Faker::Quote.famous_last_words,
  fitness_goal: Faker::Movie.quote,
  fitness_level: rand(1..5),
  attendance: rand(1..100),
  avg_rating: rand(1..5),
)

puts "#{user5.username} created."

user6 = User.create!(
  first_name: 'Emma',
  last_name: Faker::Name.last_name,
  username: 'energetic_emma',
  email: 'emma@test.com',
  password: '123456',
  date_of_birth: Faker::Date.between(from: '1975-03-06', to: '2005-03-06'),
  about_me: Faker::Quote.famous_last_words,
  fitness_goal: Faker::Movie.quote,
  fitness_level: rand(1..5),
  attendance: rand(1..100),
  avg_rating: rand(1..5),
)

puts "#{user6.username} created."

user7 = User.create!(
  first_name: 'Katie',
  last_name: Faker::Name.last_name,
  username: 'kickass_katie',
  email: 'katie@test.com',
  password: '123456',
  date_of_birth: Faker::Date.between(from: '1975-03-06', to: '2005-03-06'),
  about_me: Faker::Quote.famous_last_words,
  fitness_goal: Faker::Movie.quote,
  fitness_level: rand(1..5),
  attendance: rand(1..100),
  avg_rating: rand(1..5),
)

puts "#{user7.username} created."

user8 = User.create!(
  first_name: 'Stuart',
  last_name: Faker::Name.last_name,
  username: 'speedy_stuart',
  email: 'stuart@test.com',
  password: '123456',
  date_of_birth: Faker::Date.between(from: '1975-03-06', to: '2005-03-06'),
  about_me: Faker::Quote.famous_last_words,
  fitness_goal: Faker::Movie.quote,
  fitness_level: rand(1..5),
  attendance: rand(1..100),
  avg_rating: rand(1..5),
)

puts "#{user8.username} created."

user9 = User.create!(
  first_name: 'Fred',
  last_name: Faker::Name.last_name,
  username: 'fit_fred',
  email: 'fred@test.com',
  password: '123456',
  date_of_birth: Faker::Date.between(from: '1975-03-06', to: '2005-03-06'),
  about_me: Faker::Quote.famous_last_words,
  fitness_goal: Faker::Movie.quote,
  fitness_level: rand(1..5),
  attendance: rand(1..100),
  avg_rating: rand(1..5),
)

puts "#{user9.username} created."

user10 = User.create!(
  first_name: 'Laura',
  last_name: Faker::Name.last_name,
  username: 'lively_laura',
  email: 'laura@test.com',
  password: '123456',
  date_of_birth: Faker::Date.between(from: '1975-03-06', to: '2005-03-06'),
  about_me: Faker::Quote.famous_last_words,
  fitness_goal: Faker::Movie.quote,
  fitness_level: rand(1..5),
  attendance: rand(1..100),
  avg_rating: rand(1..5),
)

puts "#{user10.username} created."

# Create workouts
puts "Creating Workouts for #{user1.username}."

workout_one = Workout.new(
  activity_type: 'Brisk Walk',
  intensity_level: rand(1..5),
  location: 'London',
  date: Faker::Date.between(from: '2023-03-18', to: '2023-08-18'),
  start_time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now),
  duration: 60,
  description: 'Planning a brisk walk around Victoria Park.',
  capacity: 2,
  user_id: user1.id
)

workout_photo_file_one = URI.open("https://katiecouric.com/wp-content/uploads/2022/04/GettyImages-1192508928.jpg")
workout_one.photo.attach(io: workout_photo_file_one, filename: "#{workout_photo_file_one}.png", content_type: "image/png")
workout_one.save!

puts "#{user1.username} #{workout_one.activity_type} created."

workout_two = Workout.new(
  activity_type: 'Interval Run',
  intensity_level: rand(1..5),
  location: 'London',
  date: Faker::Date.between(from: '2023-03-18', to: '2023-08-18'),
  start_time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now),
  duration: 30,
  description: 'An interval run along a stretch of Regents Canal.',
  capacity: 2,
  user_id: user1.id
)

workout_photo_file_two = URI.open("https://katiecouric.com/wp-content/uploads/2022/04/GettyImages-1192508928.jpg")
workout_two.photos.attach(io: workout_photo_file_two, filename: "#{workout_photo_file_two}.png", content_type: "image/png")
workout_two.save!

puts "#{user1.username} #{workout_two.activity_type} created."

# Create bookings
puts "Creating Bookings for ..."
# TODO

# Create ratings
puts "Creating Ratings for ..."
# TODO

# TODO
