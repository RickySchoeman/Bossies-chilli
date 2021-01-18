# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Sauce.destroy_all


puts 'Creating sauces...'
Sauce.create!(name: 'Sweet Chilli', description: 'The ol faithful! Perfect with just about anything, but really shines with cheese and snack platters!' , photo_url: 'https://res.cloudinary.com/rickyschoeman/image/upload/v1609403286/chilli2_dc6xdj.jpg', price: 50)

Sauce.create!(name: 'Sweet Chilli Green', description: 'All the markings of the perfect companion for any dish - full of soul and flavor!', photo_url: 'https://res.cloudinary.com/rickyschoeman/image/upload/v1609403265/chilli1_qsxjf9.jpg', price: 50)
Sauce.create!(name: 'Jala-tangy', description: 'The perfect marinade for all things meaty! Lather em up and let the feast commence!' , photo_url: 'https://res.cloudinary.com/rickyschoeman/image/upload/v1609403301/chilli3_uxdgcy.jpg', price: 50)
puts 'Finished!'
