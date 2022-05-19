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
    poster_url: Faker::Internet.url(host: 'images.unsplash.com', path: '/photo-1573865526739-10659fec78a5', scheme: 'https'),  #=> "https://faker/fake_test_path"
    rating: rand(0.0..5.0)
  )
  puts "Created movie ##{movie.id}"
  puts "Name: #{movie.title}"
  puts "Address: #{movie.overview}"
  puts "Phone Number: #{movie.poster_url}"
  puts "Category: #{movie.rating}"
  puts ''
end

p 'Finished'
