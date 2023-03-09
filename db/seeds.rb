# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "faker"
require "open-uri"
require "date"

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
  fitness_goal: 'Consistency - to work out 10 days in one month.',
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
  about_me: '21-year-old recent graduate who would rather go to the pub than exercise.',
  fitness_goal: 'Complete a 5k run in 3 months time.',
  fitness_level: rand(1..5),
  attendance: rand(1..100),
  avg_rating: rand(1..5),
)

user2_photo_file = URI.open("https://pyxis.nymag.com/v1/imgs/8d6/f64/3876ba5a2e4bfad63beb9e99bba217b0eb-bored-quiz.rsquare.w700.jpg")
user2.photo.attach(io: user2_photo_file, filename: "#{user2_photo_file}", content_type: "image/png")
user2.save!

puts "#{user2.username} created."

user3 = User.create!(
  first_name: 'Lucy',
  last_name: Faker::Name.last_name,
  username: 'lethargic_lucy',
  email: 'lucy@test.com',
  password: '123456',
  date_of_birth: Faker::Date.between(from: '1975-03-06', to: '2005-03-06'),
  about_me: 'Looking for a fitness buddy in the local area',
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
  about_me: 'Looking for a fitness buddy in the local area',
  fitness_goal: Faker::Movie.quote,
  fitness_level: rand(1..5),
  attendance: rand(1..100),
  avg_rating: rand(1..5),
)

user4_photo_file = URI.open("https://wp-media.patheos.com/blogs/sites/507/2015/10/lazy-man-on-couch.jpeg")
user4.photo.attach(io: user4_photo_file, filename: "#{user4_photo_file}.jpg", content_type: "image/png")
user4.save!

puts "#{user4.username} created."

user5 = User.create!(
  first_name: 'Sandra',
  last_name: Faker::Name.last_name,
  username: 'sleepy_sandra',
  email: 'sandra@test.com',
  password: '123456',
  date_of_birth: Faker::Date.between(from: '1975-03-06', to: '2005-03-06'),
  about_me: 'Looking for a fitness buddy in the local area',
  fitness_goal: Faker::Movie.quote,
  fitness_level: rand(1..5),
  attendance: rand(1..100),
  avg_rating: rand(1..5),
)

user5_photo_file = URI.open("https://cdn.vanguardngr.com/wp-content/uploads/2017/02/sleep11.png")
user5.photo.attach(io: user5_photo_file, filename: "#{user5_photo_file}.png", content_type: "image/png")
user5.save!

puts "#{user5.username} created."

user6 = User.create!(
  first_name: 'Damon',
  last_name: Faker::Name.last_name,
  username: 'drowsy_damon',
  email: 'damon@test.com',
  password: '123456',
  date_of_birth: Faker::Date.between(from: '1975-03-06', to: '2005-03-06'),
  about_me: 'Looking for a fitness buddy in the local area',
  fitness_goal: Faker::Movie.quote,
  fitness_level: rand(1..5),
  attendance: rand(1..100),
  avg_rating: rand(1..5),
)

user6_photo_file = URI.open("https://media.gq-magazine.co.uk/photos/5e6902a155ca550008940db8/master/pass/20200311-Sleep")
user6.photo.attach(io: user6_photo_file, filename: "#{user6_photo_file}.png", content_type: "image/png")
user6.save!

puts "#{user6.username} created."

user7 = User.create!(
  first_name: 'Maya',
  last_name: Faker::Name.last_name,
  username: 'moderate_maya',
  email: 'maya@test.com',
  password: '123456',
  date_of_birth: Faker::Date.between(from: '1975-03-06', to: '2005-03-06'),
  about_me: 'Looking for a fitness buddy in the local area',
  fitness_goal: Faker::Movie.quote,
  fitness_level: rand(1..5),
  attendance: rand(1..100),
  avg_rating: rand(1..5),
)

user7_photo_file = URI.open("https://media.istockphoto.com/id/1217692711/photo/portrait-of-bored-lazy-upset-girl-with-brunette-hair-leaning-on-hand-and-looking-with-gloomy.jpg?s=612x612&w=0&k=20&c=gVtK9b3PcORY5xwH6m3F-9Okj_HiRycMw_fbRkGegp4=")
user7.photo.attach(io: user7_photo_file, filename: "#{user7_photo_file}.png", content_type: "image/png")
user7.save!

puts "#{user7.username} created."

user8 = User.create!(
  first_name: 'Stuart',
  last_name: Faker::Name.last_name,
  username: 'slack_stuart',
  email: 'stuart@test.com',
  password: '123456',
  date_of_birth: Faker::Date.between(from: '1975-03-06', to: '2005-03-06'),
  about_me: 'Looking for a fitness buddy in the local area',
  fitness_goal: Faker::Movie.quote,
  fitness_level: rand(1..5),
  attendance: rand(1..100),
  avg_rating: rand(1..5),
)

user8_photo_file = URI.open("https://media.istockphoto.com/id/1270851157/photo/tired-african-american-businessman-sleeping-sitting-at-work-desk.jpg?s=612x612&w=0&k=20&c=F1xUgqWRiyPj6cLcvEiOJ6wxTdkB0IhCM-3uFKwLgYI=")
user8.photo.attach(io: user8_photo_file, filename: "#{user8_photo_file}.png", content_type: "image/png")
user8.save!

puts "#{user8.username} created."

user9 = User.create!(
  first_name: 'Doris',
  last_name: Faker::Name.last_name,
  username: 'dormant_doris',
  email: 'doris@test.com',
  password: '123456',
  date_of_birth: Faker::Date.between(from: '1975-03-06', to: '2005-03-06'),
  about_me: 'Looking for a fitness buddy in the local area',
  fitness_goal: Faker::Movie.quote,
  fitness_level: rand(1..5),
  attendance: rand(1..100),
  avg_rating: rand(1..5)
)

user9_photo_file = URI.open("https://media.istockphoto.com/id/1253023912/photo/tired-student-leaning-on-books-in-the-campus-library.jpg?s=612x612&w=0&k=20&c=NMQ9A4hiOFKortv_io1M7_bt4haqSrRbLKfOHGKTLHI=")
user9.photo.attach(io: user9_photo_file, filename: "#{user9_photo_file}.png", content_type: "image/png")
user9.save!

puts "#{user9.username} created."

user10 = User.create!(
  first_name: 'Laura',
  last_name: Faker::Name.last_name,
  username: 'loafing_laura',
  email: 'laura@test.com',
  password: '123456',
  date_of_birth: Faker::Date.between(from: '1975-03-06', to: '2005-03-06'),
  about_me: 'Looking for a fitness buddy in the local area',
  fitness_goal: Faker::Movie.quote,
  fitness_level: rand(1..5),
  attendance: rand(1..100),
  avg_rating: rand(1..5),
)

user10_photo_file = URI.open("https://st2.depositphotos.com/1049680/42563/i/600/depositphotos_425634606-stock-photo-beautiful-hispanic-woman-expecting-baby.jpg")
user10.photo.attach(io: user10_photo_file, filename: "#{user10_photo_file}.jpg", content_type: "image/jpg")
user10.save!

puts "#{user10.username} created."

# Create workouts
puts "Creating workouts for #{user1.username}."

workout_one = Workout.create!(
  activity_type: 'Brisk Walk',
  intensity_level: rand(1..5),
  location: 'Shoreditch Park, 188 New North Road, London N1 6TA',
  date: Faker::Date.between(from: '2023-03-18', to: '2023-08-18'),
  start_time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :short),
  duration: 60,
  description: 'Planning a brisk walk around Victoria Park.',
  capacity: 2,
  user_id: user1.id
)

workout_photo_file_one = URI.open("https://katiecouric.com/wp-content/uploads/2022/04/GettyImages-1192508928.jpg")
workout_one.photo.attach(io: workout_photo_file_one, filename: "#{workout_photo_file_one}.jpg", content_type: "image/jpg")
if !workout_one.save!
  puts "workout one failed"
end

puts "#{user1.username}: #{workout_one.activity_type} created."

workout_two = Workout.create!(
  activity_type: 'Interval Run',
  intensity_level: rand(1..5),
  location: '283 Kingsland Road, London E2 8AS',
  date: Faker::Date.between(from: '2023-03-18', to: '2023-08-18'),
  start_time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :short),
  duration: 30,
  description: 'An interval run along a lovely stretch of Regents Canal.',
  capacity: 2,
  user_id: user1.id
)

workout_photo_file_two = URI.open("https://hips.hearstapps.com/hmg-prod/images/4-interval-training-sessions-for-runners-1657810907.jpg")
workout_two.photo.attach(io: workout_photo_file_two, filename: "#{workout_photo_file_two}.jpg", content_type: "image/jpg")
if !workout_two.save!
  puts "workout_two failed"
end

puts "#{user1.username}: #{workout_two.activity_type} created."

puts "Creating workouts for #{user5.username}."

workout_three = Workout.create!(
  activity_type: 'Yoga Class',
  intensity_level: 2,
  location: 'Held, 42 Hoxton Square, London N1 6PB',
  date: Faker::Date.between(from: '2023-03-18', to: '2023-08-18'),
  start_time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :short),
  duration: 50,
  description: 'Join me for a beginners yoga class.',
  capacity: 2,
  user_id: user5.id
)

workout_photo_file_three = URI.open("https://media.healthnews.com/images/featured/2022/08/The-yoga-equipment.jpg")
workout_three.photo.attach(io: workout_photo_file_three, filename: "#{workout_photo_file_three}.jpg", content_type: "image/jpg")
if !workout_three.save!
  puts "workout_three failed"
end

puts "#{user5.username}: #{workout_three.activity_type} created."

workout_four = Workout.create!(
  activity_type: 'Tennis Lesson',
  intensity_level: 4,
  location: 'London Fields Tennis Courts, Richmond Road, London E8 3QN',
  date: Faker::Date.between(from: '2023-03-18', to: '2023-08-18'),
  start_time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :short),
  duration: 60,
  description: 'Join me for a tennis lesson.',
  capacity: 2,
  user_id: user5.id
)

workout_photo_file_four = URI.open("https://hctennis.co.uk/static/images/ballonra.jpg")
workout_four.photo.attach(io: workout_photo_file_four, filename: "#{workout_photo_file_four}.jpg", content_type: "image/jpg")
if !workout_four.save!
  puts "workout_four failed"
end

puts "#{user5.username}: #{workout_four.activity_type} created."

puts "Creating workouts for #{user6.username}."

workout_five = Workout.create!(
  activity_type: 'Cycle Ride',
  intensity_level: 4,
  location: 'London Fields West Side, London E8 3EU',
  date: Faker::Date.between(from: '2023-03-18', to: '2023-08-18'),
  start_time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :short),
  duration: 60,
  description: 'Join me for a cycle ride.',
  capacity: 2,
  user_id: user6.id
)

workout_photo_file_five = URI.open("https://thebridge.in/wp-content/uploads/2020/12/Source-Cyclist.png")
workout_five.photo.attach(io: workout_photo_file_five, filename: "#{workout_photo_file_five}.png", content_type: "image/png")
if !workout_five.save!
  puts "workout_five failed"
end

puts "#{user6.username}: #{workout_five.activity_type} created."

workout_six = Workout.create!(
  activity_type: 'Swim Session',
  intensity_level: 4,
  location: 'Britannia Leisure Centre, Pitfield Street, London N1 5FT',
  date: Faker::Date.between(from: '2023-03-18', to: '2023-08-18'),
  start_time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :short),
  duration: 60,
  description: 'Join me for a swim.',
  capacity: 2,
  user_id: user6.id
)

workout_photo_file_six = URI.open("https://static01.nyt.com/images/2022/05/27/well/27WELL-SWIM-FOR-EXERCISE3/27WELL-SWIM-FOR-EXERCISE3-mobileMasterAt3x.jpg")
workout_six.photo.attach(io: workout_photo_file_six, filename: "#{workout_photo_file_six}.jpg", content_type: "image/jpg")
if !workout_six.save!
  puts "workout_six failed"
end

puts "#{user6.username}: #{workout_six.activity_type} created."

puts "Creating workouts for #{user9.username}."

workout_seven = Workout.create!(
  activity_type: 'Pilates Class',
  intensity_level: 2,
  location: 'Hoxton',
  date: Faker::Date.between(from: '2023-03-18', to: '2023-08-18'),
  start_time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :short),
  duration: 50,
  description: 'Join me for a pilates class.',
  capacity: 2,
  user_id: user9.id
)

workout_photo_file_seven = URI.open("https://styleanddecor.co.uk/system/wp-content/uploads/2020/02/Waiting-for-a-Pilates-class.jpg")
workout_seven.photo.attach(io: workout_photo_file_seven, filename: "#{workout_photo_file_seven}.jpg", content_type: "image/jpg")
if !workout_seven.save!
  puts "workout_seven failed"
end

puts "#{user9.username}: #{workout_seven.activity_type} created."

workout_eight = Workout.create!(
  activity_type: 'Park Workout',
  intensity_level: 2,
  location: 'Haggerston Park, Yorkton Street, London E2 8NH',
  date: Faker::Date.between(from: '2023-03-18', to: '2023-08-18'),
  start_time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :short),
  duration: 30,
  description: 'Join me for a gentle park workout.',
  capacity: 2,
  user_id: user9.id
)

workout_photo_file_eight = URI.open("https://www.shape.com/thmb/5bLzpsVPTPwwvnNm8WuS9NQExRQ=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/outdoor-workout-promo-2000-d8aca15ab94e4ef49137b4ae10a02593.jpg")
workout_eight.photo.attach(io: workout_photo_file_eight, filename: "#{workout_photo_file_eight}.jpg", content_type: "image/jpg")
if !workout_eight.save!
  puts "workout_eight failed"
end

puts "#{user9.username}: #{workout_eight.activity_type} created."

# TODO - add more workouts

# Create bookings
puts "Creating bookings for #{user2.username}."

booking_one = Booking.create!(
  user_id: user2.id,
  workout_id: workout_one.id,
  booking_date: workout_one.date
)
puts "#{user2.username}: #{booking_one.booking_date}."

booking_two = Booking.create!(
  user_id: user2.id,
  workout_id: workout_two.id,
  booking_date: workout_two.date
)
puts "#{user2.username}: #{booking_two.booking_date}."

# TODO - Add more bookings

# Create ratings
puts "Creating ratings for #{user1.username}."

rating_one = Rating.create!(
  booking_id: booking_one.id,
  buddy_attended: true,
  buddy_rating: 4,
  comment: 'Best buddy on Earth!'
)
puts "#{user1.username}: #{rating_one.comment}"

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

puts "#{tag_one.name}, #{tag_two.name}, #{tag_three.name}, #{tag_four.name}, #{tag_five.name}, #{tag_six.name} ... to be continued."
