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

# Delete users, workouts. bookings
puts "In this order: Destroying messages, chats, ratings, bookings, workouts, users."

Message.destroy_all
Chat.destroy_all
Rating.destroy_all
Booking.destroy_all
Workout.destroy_all
User.destroy_all

# Create users
puts "Creating 12 Let's Go users:"

user1 = User.create!(
  first_name: 'Sarah',
  last_name: 'Sparkes',
  username: 'sedentary_sarah',
  email: 'sarah@test.com',
  password: '123456',
  date_of_birth: '1987-06-25',
  about_me: '35-year-old software engineer spending too many hours sat in a chair.
  Looking for a fitness buddy in the local area to workout with for runs, brisk walks,
  yoga sessions, and swimming.',
  fitness_goal: 'To work out more consistently and commit to 10 buddy workouts per month.',
  fitness_level: 3,
  attendance: 100,
  avg_rating: 5,
)

user1_photo_file = URI.open("https://media.istockphoto.com/id/1264330893/photo/when-did-i-lose-my-passion-for-this-job.jpg?s=612x612&w=0&k=20&c=5bIbLJvcOAZTd5iAZPWh0ZnYApYOayDEwt9ZUWnXGR0=")
user1.photo.attach(io: user1_photo_file, filename: "#{user1_photo_file}.png", content_type: "image/png")
user1.save!

puts "#{user1.username} created."

user2 = User.create!(
  first_name: 'Lindsay',
  last_name: 'Harris',
  username: 'lazy_lindsay',
  email: 'lindsay@test.com',
  password: '123456',
  date_of_birth: '2002-03-08',
  about_me: '21-year-old recent graduate who would rather go to the pub than exercise.
  I would love some exercise buddies to help me get in shape for a 5k run.',
  fitness_goal: 'Complete a 5k run in 3 months time.',
  fitness_level: 2,
  attendance: 75,
  avg_rating: 3,
)

user2_photo_file = URI.open("https://pyxis.nymag.com/v1/imgs/8d6/f64/3876ba5a2e4bfad63beb9e99bba217b0eb-bored-quiz.rsquare.w700.jpg")
user2.photo.attach(io: user2_photo_file, filename: "#{user2_photo_file}.jpg", content_type: "image/png")
user2.save!

puts "#{user2.username} created."

user3 = User.create!(
  first_name: 'Kat',
  last_name: 'Wynne-Ellis',
  username: 'comatose_kat',
  email: 'kat@test.com',
  password: '123456',
  date_of_birth: '1989-04-17',
  about_me: '33-year old cross-fit fanatic.',
  fitness_goal: 'To do more and more cross-fit and become less comatose.',
  fitness_level: 5,
  attendance: 100,
  avg_rating: 5,
)

user3_photo_file = URI.open("https://ca.slack-edge.com/T02NE0241-U04JHKF45MM-0d08fe2ae67d-512")
user3.photo.attach(io: user3_photo_file, filename: "#{user3_photo_file}.png", content_type: "image/png")
user3.save!

puts "#{user3.username} created."

user4 = User.create!(
  first_name: 'Anthony',
  last_name: 'Deadman',
  username: 'apathetic_anthony',
  email: 'anthony@test.com',
  password: '123456',
  date_of_birth: '1997-04-03',
  about_me: '25-year old software engineer, loves to eat all the pastries.',
  fitness_goal: 'To balance out the pastry eating by getting super fit.',
  fitness_level: 1,
  attendance: 0,
  avg_rating: 0,
)

user4_photo_file = URI.open("https://ca.slack-edge.com/T02NE0241-U04KB42E0RX-00801b481bde-512")
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
  last_name: 'Faker::Name.last_name',
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

user11 = User.create!(
  first_name: 'Rachel',
  last_name: 'Jones',
  username: 'reluctant_rachel',
  email: 'rachel@test.com',
  password: '123456',
  date_of_birth: '1988-11-19',
  about_me: '34-year old software engineer looking to get fit.',
  fitness_goal: 'To commit to two buddy workout sessions a week.',
  fitness_level: 2,
  attendance: 100,
  avg_rating: 5,
)

user11_photo_file = URI.open("https://ca.slack-edge.com/T02NE0241-U04JX48AECD-12bfbc4a382a-512")
user11.photo.attach(io: user11_photo_file, filename: "#{user11_photo_file}.jpg", content_type: "image/jpg")
user11.save!

puts "#{user11.username} created."

user12 = User.create!(
  first_name: 'Becky',
  last_name: 'Lomax',
  username: 'bone_idle_becky',
  email: 'becky@test.com',
  password: '123456',
  date_of_birth: '1979-08-15',
  about_me: '43-year old software engineer looking to get fit.',
  fitness_goal: 'To commit to two buddy workout sessions a week.',
  fitness_level: 3,
  attendance: 100,
  avg_rating: 5,
)

user12_photo_file = URI.open("https://ca.slack-edge.com/T02NE0241-U04K81P8R4Z-7acb4b5d03cd-512")
user12.photo.attach(io: user12_photo_file, filename: "#{user12_photo_file}.jpg", content_type: "image/jpg")
user12.save!

puts "#{user12.username} created."

# Create workouts
puts "Creating 20 Let's Go workouts:"

puts "Creating workouts for #{user1.username}."

workout_one = Workout.create!(
  activity_type: 'Walk',
  intensity_level: 2,
  location: 'Shoreditch Park, London N1 6TA',
  date: '2023-03-25',
  start_time: '23/03/25 10:00',
  duration: 60,
  description: 'Planning a brisk walk around Victoria Park.',
  capacity: 2,
  user_id: user1.id
)

workout_photo_file_one = URI.open("https://globalsportmatters.com/wp-content/uploads/2019/08/Walking.jpg")
workout_one.photo.attach(io: workout_photo_file_one, filename: "#{workout_photo_file_one}.jpg", content_type: "image/jpg")
if !workout_one.save!
  puts "workout_one failed"
end

puts "#{user1.username} created #{workout_one.activity_type}."

workout_two = Workout.create!(
  activity_type: 'Run',
  intensity_level: 5,
  location: '283 Kingsland Road, London E2 8AS',
  date: '2023-04-11',
  start_time: '23/04/11 19:00',
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

puts "#{user1.username} created #{workout_two.activity_type}."

puts "Creating workouts for #{user5.username}."

workout_three = Workout.create!(
  activity_type: 'Yoga Class',
  intensity_level: 2,
  location: '42 Hoxton Square, London N1 6PB',
  date: Faker::Date.between(from: '2023-03-18', to: '2023-06-18'),
  start_time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :short),
  duration: 50,
  description: 'Join me for a beginners yoga class.',
  capacity: 2,
  user_id: user5.id
)

workout_photo_file_three = URI.open("https://i.insider.com/616729ff38c19600182fb536?width=700")
workout_three.photo.attach(io: workout_photo_file_three, filename: "#{workout_photo_file_three}.jpg", content_type: "image/jpg")
if !workout_three.save!
  puts "workout_three failed"
end

puts "#{user5.username} created #{workout_three.activity_type}."

workout_four = Workout.create!(
  activity_type: 'Tennis',
  intensity_level: 4,
  location: 'London Fields Tennis Courts, London E8 3QN',
  date: Faker::Date.between(from: '2023-03-18', to: '2023-06-18'),
  start_time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :short),
  duration: 60,
  description: 'Join me for a tennis session. Underarm serves only!',
  capacity: 2,
  user_id: user5.id
)

workout_photo_file_four = URI.open("https://www.playyourcourt.com/news/wp-content/uploads/2015/03/social-blog.jpg")
workout_four.photo.attach(io: workout_photo_file_four, filename: "#{workout_photo_file_four}.jpg", content_type: "image/jpg")
if !workout_four.save!
  puts "workout_four failed"
end

puts "#{user5.username} created #{workout_four.activity_type}."

puts "Creating workouts for #{user6.username}."

workout_five = Workout.create!(
  activity_type: 'Cycle',
  intensity_level: 4,
  location: 'London Fields, London E8 3EU',
  date: Faker::Date.between(from: '2023-03-18', to: '2023-06-18'),
  start_time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :short),
  duration: 60,
  description: 'Join me for a cycle ride.',
  capacity: 2,
  user_id: user6.id
)

workout_photo_file_five = URI.open("https://www.siroko.com/blog/c/app/uploads/2021/07/efectos-positivos_f766ef96-0811-452d-bbf8-ec38d244637a-1440x900.jpg")
workout_five.photo.attach(io: workout_photo_file_five, filename: "#{workout_photo_file_five}.png", content_type: "image/png")
if !workout_five.save!
  puts "workout_five failed"
end

puts "#{user6.username} created #{workout_five.activity_type}."

workout_six = Workout.create!(
  activity_type: 'Swim',
  intensity_level: 4,
  location: 'Britannia Leisure Centre, London N1 5FT',
  date: Faker::Date.between(from: '2023-03-18', to: '2023-06-18'),
  start_time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :short),
  duration: 60,
  description: 'Join me for a swim - planning to do 30 lengths',
  capacity: 2,
  user_id: user6.id
)

workout_photo_file_six = URI.open("https://cdn.shopify.com/s/files/1/0216/5991/0208/articles/05-Lap-Swim-Etiquette-blog-header.webp?v=1665774583")
workout_six.photo.attach(io: workout_photo_file_six, filename: "#{workout_photo_file_six}.jpg", content_type: "image/jpg")
if !workout_six.save!
  puts "workout_six failed"
end

puts "#{user6.username} created #{workout_six.activity_type}."

puts "Creating workouts for #{user9.username}."

workout_seven = Workout.create!(
  activity_type: 'Pilates Class',
  intensity_level: 2,
  location: 'Hoxton',
  date: Faker::Date.between(from: '2023-03-18', to: '2023-06-18'),
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

puts "#{user9.username} created #{workout_seven.activity_type}."

workout_eight = Workout.create!(
  activity_type: 'Park Workout',
  intensity_level: 2,
  location: 'Haggerston Park, London E2 8NH',
  date: Faker::Date.between(from: '2023-03-18', to: '2023-06-18'),
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

puts "#{user9.username} created #{workout_eight.activity_type}."

puts "Creating workouts for #{user7.username}."

workout_nine = Workout.create!(
  activity_type: 'Strength',
  intensity_level: 4,
  location: '2-4 Rufus St, London N1 6PE',
  date: Faker::Date.between(from: '2023-03-18', to: '2023-06-18'),
  start_time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :short),
  duration: 45,
  description: 'Join me for a boxing class.',
  capacity: 2,
  user_id: user7.id
)

workout_photo_file_nine = URI.open("https://lafayettefamilyymca.org/wp-content/uploads/2022/03/88366919_m-1-1024x683.jpg")
workout_nine.photo.attach(io: workout_photo_file_nine, filename: "#{workout_photo_file_nine}.jpg", content_type: "image/jpg")
if !workout_nine.save!
  puts "workout_nine failed"
end

puts "#{user7.username} created #{workout_nine.activity_type}."

workout_ten = Workout.create!(
  activity_type: 'Run',
  intensity_level: 4,
  location: 'London Fields, London E8 3EU',
  date: Faker::Date.between(from: '2023-03-18', to: '2023-06-18'),
  start_time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :short),
  duration: 45,
  description: 'Join me for a HIIT run in London Fields.',
  capacity: 2,
  user_id: user7.id
)

workout_photo_file_ten = URI.open("https://media.istockphoto.com/id/604370074/photo/young-fitness-woman-runner-running-on-sunrise-seaside-trail.jpg?s=612x612&w=0&k=20&c=P0T5W3su9k6ERaViMwQIXrat47BX_TMJ3d-XkDXPLzo=")
workout_ten.photo.attach(io: workout_photo_file_ten, filename: "#{workout_photo_file_ten}.jpg", content_type: "image/jpg")
if !workout_ten.save!
  puts "workout_ten failed"
end

puts "#{user7.username} created #{workout_ten.activity_type}."

puts "Creating workouts for #{user8.username}."

workout_eleven = Workout.create!(
  activity_type: 'Yoga Class',
  intensity_level: 2,
  location: '42 Hoxton Square, London N1 6PB',
  date: Faker::Date.between(from: '2023-03-18', to: '2023-06-18'),
  start_time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :short),
  duration: 45,
  description: 'Join me for a vinyasa yoga session.',
  capacity: 2,
  user_id: user8.id
)

workout_photo_file_eleven = URI.open("https://hips.hearstapps.com/hmg-prod/images/young-sporty-black-man-in-plank-pose-royalty-free-image-922344970-1534365835.jpg")
workout_eleven.photo.attach(io: workout_photo_file_eleven, filename: "#{workout_photo_file_eleven}.jpg", content_type: "image/jpg")
if !workout_eleven.save!
  puts "workout_eleven failed"
end

puts "#{user8.username} created #{workout_eleven.activity_type}."

puts "Creating workouts for #{user8.username}."

workout_twelve = Workout.create!(
  activity_type: 'Strength',
  intensity_level: 5,
  location: '2-4 Rufus St, London N1 6PE',
  date: Faker::Date.between(from: '2023-03-18', to: '2023-06-18'),
  start_time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :short),
  duration: 45,
  description: 'Join me for an high energy strength session.',
  capacity: 2,
  user_id: user8.id
)

workout_photo_file_twelve = URI.open("https://blackhealthmatters.com/wp-content/uploads/2019/01/Hit-the-Weight-Room.jpg")
workout_twelve.photo.attach(io: workout_photo_file_twelve, filename: "#{workout_photo_file_twelve}.jpg", content_type: "image/jpg")
if !workout_twelve.save!
  puts "workout_twelve failed"
end

puts "#{user8.username} created #{workout_twelve.activity_type}."

puts "Creating workouts for #{user3.username}."

workout_thirteen = Workout.create!(
  activity_type: 'Workout Class',
  intensity_level: 5,
  location: 'Amica, 89A Rivington Street, London EC2A 3AY',
  date: '2023-03-11',
  start_time: '23/03/11 09:00',
  duration: 60,
  description: 'Join me for an intense cross-fit session at Amica Cross Fit Shoreditch.',
  capacity: 2,
  user_id: user3.id
)

workout_photo_file_thirteen = URI.open("https://www.wellandgood.com/wp-content/uploads/2018/11/Stocksy-crossfit-friends-BONNINSTUDIO.jpg")
workout_thirteen.photo.attach(io: workout_photo_file_thirteen, filename: "#{workout_photo_file_thirteen}.jpg", content_type: "image/jpg")
if !workout_thirteen.save!
  puts "workout_thirteen failed"
end

puts "#{user3.username} created #{workout_thirteen.activity_type}."

workout_fourteen = Workout.create!(
  activity_type: 'Strength',
  intensity_level: 5,
  location: 'Pure Gym Shoreditch, 8 Bacon Street, London E1 6LF',
  date: '2023-03-04',
  start_time: '23/03/04 12:00',
  duration: 60,
  description: 'Join me for a strength session at Pure Gym Shoreditch.',
  capacity: 2,
  user_id: user3.id
)

workout_photo_file_fourteen = URI.open("https://media1.popsugar-assets.com/files/thumbor/etJR77cn5FUYQGi8nCiZE-HM_T4/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2019/06/14/012/n/1922729/a7c150cf5d042b2a7a44b9.08049726_/i/Full-Body-Workout-Partners.jpg")
workout_fourteen.photo.attach(io: workout_photo_file_fourteen, filename: "#{workout_photo_file_fourteen}.jpg", content_type: "image/jpg")
if !workout_fourteen.save!
  puts "workout_fourteen failed"
end

puts "#{user3.username} created #{workout_fourteen.activity_type}."

workout_fifteen = Workout.create!(
  activity_type: 'Cycle',
  intensity_level: 3,
  location: 'Pure Gym Shoreditch, 8 Bacon Street, London E1 6LF',
  date: '2023-03-12',
  start_time: '23/03/12 15:00',
  duration: 60,
  description: 'Join me for a high energy spin session at Pure Gym Shoreditch.',
  capacity: 2,
  user_id: user3.id
)

workout_photo_file_fifteen = URI.open("https://media.istockphoto.com/id/1134717663/photo/attractive-woman-and-handsome-man-doing-exercising-on-cycling-bikes.jpg?s=612x612&w=0&k=20&c=FUaIkj3HNWGpUknUMIe84OnYWkfqvymtsPH_wK2kG-Y=")
workout_fifteen.photo.attach(io: workout_photo_file_fifteen, filename: "#{workout_photo_file_fifteen}.jpg", content_type: "image/jpg")
if !workout_fifteen.save!
  puts "workout_fifteen failed"
end

puts "#{user3.username} created #{workout_fifteen.activity_type}."

workout_sixteen = Workout.create!(
  activity_type: 'Run',
  intensity_level: 3,
  location: 'Homerton High Street, London',
  date: '2023-03-09',
  start_time: '23/03/09 19:00',
  duration: 60,
  description: 'Join me for an interval run around Homerton.',
  capacity: 2,
  user_id: user3.id
)

workout_photo_file_sixteen = URI.open("https://gymplus.ie/wp-content/uploads/2023/01/Recipe-Inside-Image-12.png")
workout_sixteen.photo.attach(io: workout_photo_file_sixteen, filename: "#{workout_photo_file_sixteen}.jpg", content_type: "image/jpg")
if !workout_sixteen.save!
  puts "workout_sixteen failed"
end

puts "#{user3.username} created #{workout_sixteen.activity_type}."

workout_seventeen = Workout.create!(
  activity_type: 'Run',
  intensity_level: 2,
  location: 'London Fields West Side, London E8 3EU',
  date: '2023-03-25',
  start_time: '23/03/25 10:00',
  duration: 30,
  description: 'Join me for an gentle run around the London Fields area.',
  capacity: 2,
  user_id: user3.id
)

workout_photo_file_seventeen = URI.open("https://media.istockphoto.com/id/1169157186/photo/there-are-no-shortcuts-when-it-comes-to-fitness.jpg?s=612x612&w=0&k=20&c=iu36xBmMBXvUjEyGw6craZjHSTo8l1lBOfZqmRvstJA=")
workout_seventeen.photo.attach(io: workout_photo_file_seventeen, filename: "#{workout_photo_file_seventeen}.jpg", content_type: "image/jpg")
if !workout_seventeen.save!
  puts "workout_seventeen failed"
end

puts "#{user3.username} created #{workout_seventeen.activity_type}."

puts "Creating workouts for #{user11.username}."

workout_eighteen = Workout.create!(
  activity_type: 'Park Workout',
  intensity_level: 2,
  location: 'Hackney Downs Park, Downs Park Road, London E5 8NP',
  date: '2023-04-01',
  start_time: '23/04/01 11:00',
  duration: 45,
  description: 'Join me for a park workout at Hackney Downs Park.',
  capacity: 2,
  user_id: user11.id
)

workout_photo_file_eighteen = URI.open("https://lucasjamespersonaltraining.com/wp-content/uploads/2015/05/The-30-Minute-Park-Workout-1280x720.jpg")
workout_eighteen.photo.attach(io: workout_photo_file_eighteen, filename: "#{workout_photo_file_eighteen}.jpg", content_type: "image/jpg")
if !workout_eighteen.save!
  puts "workout_eighteen failed"
end

puts "#{user11.username} created #{workout_eighteen.activity_type}."

workout_nineteen = Workout.create!(
  activity_type: 'Walk',
  intensity_level: 2,
  location: 'Clissold Park, Green Lanes, London N16 9HJ',
  date: '2023-04-04',
  start_time: '23/04/04 19:00',
  duration: 45,
  description: 'Join me for a brisk walk after work around Clissold Park.',
  capacity: 2,
  user_id: user11.id
)

workout_photo_file_nineteen = URI.open("https://blog.myfitnesspal.com/wp-content/uploads/2020/09/6-Common-Walking-Myths-Busted-1200x675.jpg")
workout_nineteen.photo.attach(io: workout_photo_file_nineteen, filename: "#{workout_photo_file_nineteen}.jpg", content_type: "image/jpg")
if !workout_nineteen.save!
  puts "workout_nineteen failed"
end

puts "#{user11.username} created #{workout_nineteen.activity_type}."

# TODO - add more workouts

#  Create bookings

puts "Creating bookings for #{user7.username}."

booking_one = Booking.create!(
  user_id: user7.id,
  workout_id: workout_sixteen.id,
  booking_date: workout_sixteen.date
)
puts "#{user7.username} booked: #{workout_sixteen.activity_type}."

puts "Creating bookings for #{user9.username}."

booking_two = Booking.create!(
  user_id: user9.id,
  workout_id: workout_fourteen.id,
  booking_date: workout_fourteen.date
)
puts "#{user9.username} booked: #{workout_fourteen.activity_type}."

booking_three = Booking.create!(
  user_id: user11.id,
  workout_id: workout_thirteen.id,
  booking_date: workout_thirteen.date
)
puts "#{user11.username} booked: #{workout_thirteen.activity_type}."

booking_four = Booking.create!(
  user_id: user12.id,
  workout_id: workout_fifteen.id,
  booking_date: workout_fifteen.date
)
puts "#{user12.username} booked: #{workout_fifteen.activity_type}."

# TODO - Add more bookings

# Create ratings
puts "Creating ratings for #{user3.username}."

rating_one = Rating.create!(
  booking_id: booking_three.id,
  buddy_attended: true,
  buddy_rating: 4,
  comment: 'Best buddy on Earth!',
  workout_host: false,
  user_id: user11.id,
)
puts "#{user11.username} rated #{user3.username}: #{rating_one.comment}"

rating_two = Rating.create!(
  booking_id: booking_four.id,
  buddy_attended: true,
  buddy_rating: 5,
  comment: 'Best buddy in the Universe!',
  workout_host: false,
  user_id: user12.id,
)
puts "#{user12.username} rated #{user3.username}: #{rating_two.comment}"

# TODO - Add more ratings

puts "Finished!"
