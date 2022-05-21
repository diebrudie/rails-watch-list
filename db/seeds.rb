# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p 'Deleting all movies'
Movie.delete_all

p 'Seeding your data:basewith fake data'

25.times do
  movie = Movie.create(
    title: Faker::Movie.title,
    overview:  Faker::Movies::VForVendetta.quote,
    poster_url: Faker::Internet.url(host: 'images.unsplash.com', path: '/photo-1485846234645-a62644f84728?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop', scheme: 'https'),  #=> "https://faker/fake_test_path"
    rating: rand(3.0..5.0).round(1)
  )
  puts "Created movie ##{movie.id}"
  puts "Name: #{movie.title}"
  puts "Address: #{movie.overview}"
  puts "Phone Number: #{movie.poster_url}"
  puts "Category: #{movie.rating}"
  puts ''
end

p 'Finished'
