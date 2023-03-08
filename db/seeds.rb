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
  about_me: '35-year-old software engineer spending too many hours sat in a chair.
  Looking for a fitness buddy in the local area to workout with for runs, brisk walks,
  yoga sessions, and swimming.',
  fitness_goal: Faker::Movie.quote,
  fitness_level: rand(1..5),
  attendance: rand(1..100),
  avg_rating: rand(1..5),
)

user1_photo_file = URI.open("https://media.istockphoto.com/id/1264330893/photo/when-did-i-lose-my-passion-for-this-job.jpg?s=612x612&w=0&k=20&c=5bIbLJvcOAZTd5iAZPWh0ZnYApYOayDEwt9ZUWnXGR0=")
user1.photo.attach(io: user1_photo_file, filename: "#{user1_photo_file}.png", content_type: "image/png")
user1.save!

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

user2_photo_file = URI.open("https://images.pond5.com/bored-young-woman-office-worker-footage-129058710_iconl.jpeg")
user2.photo.attach(io: user2_photo_file, filename: "#{user2_photo_file}.png", content_type: "image/png")
user2.save!

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

user3_photo_file = URI.open("https://media.istockphoto.com/id/1028394762/photo/woman-eating-pizza-image-taken-from-above.jpg?s=612x612&w=0&k=20&c=bmbNfNtLf22xd9Ecjk7Kr89DSkvtrGiSnsCcizrYBy0=")
user3.photo.attach(io: user3_photo_file, filename: "#{user3_photo_file}.png", content_type: "image/png")
user3.save!

puts "#{user3.username} created."

user4 = User.create!(
  first_name: 'Anthony',
  last_name: Faker::Name.last_name,
  username: 'apathetic_anthony',
  email: 'anthony@test.com',
  password: '123456',
  date_of_birth: Faker::Date.between(from: '1975-03-06', to: '2005-03-06'),
  about_me: Faker::Quote.famous_last_words,
  fitness_goal: Faker::Movie.quote,
  fitness_level: rand(1..5),
  attendance: rand(1..100),
  avg_rating: rand(1..5),
)

# TODO - add photo

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

# TODO - add photo

puts "#{user5.username} created."

user6 = User.create!(
  first_name: 'Dan',
  last_name: Faker::Name.last_name,
  username: 'drowsy_dan',
  email: 'dan@test.com',
  password: '123456',
  date_of_birth: Faker::Date.between(from: '1975-03-06', to: '2005-03-06'),
  about_me: Faker::Quote.famous_last_words,
  fitness_goal: Faker::Movie.quote,
  fitness_level: rand(1..5),
  attendance: rand(1..100),
  avg_rating: rand(1..5),
)

# TODO - add photo

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

# TODO - add photo

puts "#{user7.username} created."

user8 = User.create!(
  first_name: 'Stuart',
  last_name: Faker::Name.last_name,
  username: 'slowcoach_stuart',
  email: 'stuart@test.com',
  password: '123456',
  date_of_birth: Faker::Date.between(from: '1975-03-06', to: '2005-03-06'),
  about_me: Faker::Quote.famous_last_words,
  fitness_goal: Faker::Movie.quote,
  fitness_level: rand(1..5),
  attendance: rand(1..100),
  avg_rating: rand(1..5),
)

# TODO - add photo

puts "#{user8.username} created."

user9 = User.create!(
  first_name: 'Fred',
  last_name: Faker::Name.last_name,
  username: 'frumpy_fred',
  email: 'fred@test.com',
  password: '123456',
  date_of_birth: Faker::Date.between(from: '1975-03-06', to: '2005-03-06'),
  about_me: Faker::Quote.famous_last_words,
  fitness_goal: Faker::Movie.quote,
  fitness_level: rand(1..5),
  attendance: rand(1..100),
  avg_rating: rand(1..5),
)

# TODO - add photo

puts "#{user9.username} created."

user10 = User.create!(
  first_name: 'Laura',
  last_name: Faker::Name.last_name,
  username: 'loafing_laura',
  email: 'laura@test.com',
  password: '123456',
  date_of_birth: Faker::Date.between(from: '1975-03-06', to: '2005-03-06'),
  about_me: Faker::Quote.famous_last_words,
  fitness_goal: Faker::Movie.quote,
  fitness_level: rand(1..5),
  attendance: rand(1..100),
  avg_rating: rand(1..5),
)

# TODO - add photo

puts "#{user10.username} created."

# Create workouts
puts "Creating workouts for #{user1.username}."

workout_one = Workout.create!(
  activity_type: 'Brisk Walk',
  intensity_level: rand(1..5),
  location: 'Shoreditch',
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

puts "#{user1.username}: #{workout_one.activity_type} created."

workout_two = Workout.create!(
  activity_type: 'Interval Run',
  intensity_level: rand(1..5),
  location: 'Hoxton',
  date: Faker::Date.between(from: '2023-03-18', to: '2023-08-18'),
  start_time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now),
  duration: 30,
  description: 'An interval run along a lovely stretch of Regents Canal.',
  capacity: 2,
  user_id: user1.id
)

workout_photo_file_two = URI.open("https://hips.hearstapps.com/hmg-prod/images/4-interval-training-sessions-for-runners-1657810907.jpg")
workout_two.photo.attach(io: workout_photo_file_two, filename: "#{workout_photo_file_two}.png", content_type: "image/png")
workout_two.save!

# TODO - add more workouts

puts "#{user1.username}: #{workout_two.activity_type} created."

# Create bookings
puts "Creating bookings for #{user2.username}."

booking_one = Booking.create!(
  user_id: user2.id,
  workout_id: workout_one.id,
  booking_date: workout_one.date
)
puts "#{user2.username}: #{booking_one}."

booking_two = Booking.create!(
  user_id: user2.id,
  workout_id: workout_two.id,
  booking_date: workout_two.date
)
puts "#{user2.username}: #{booking_two}."

# TODO - Add more bookings

# Create ratings
puts "Creating ratings for #{user1.username}."

rating_one = Rating.create!(
  booking_id: booking_one.id,
  buddy_attended: true,
  buddy_rating: 4,
  comment: 'Best buddy on Earth!'
)
puts "#{user1.username}: #{rating_one}."

# TODO - Add more ratings

# Create tags
puts "Creating tags..."

tag_one = Tag.create!(
    name: 'brunch',
  )

tag_two = Tag.create!(
  name: 'sleep',
)

tag_three = Tag.create!(
  name: 'spa',
)

tag_four = Tag.create!(
  name: 'food',
)

tag_five = Tag.create!(
  name: 'music',
)

tag_six = Tag.create!(
  name: 'TV',
)

puts "#{tag_one.name}, #{tag_two.name}, #{tag_three.name}, #{tag_four.name}, #{tag_five.name}, #{tag_six.name}"
