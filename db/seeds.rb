# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Booking.destroy_all
Item.destroy_all
Category.destroy_all
puts 'Creating categories...'
categories = [
      {name: "Suits", url: "https://images.pexels.com/photos/883362/pexels-photo-883362.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"},
      {name: "Wedding Dress", url: "https://images.pexels.com/photos/2122363/pexels-photo-2122363.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"},
      {name: "Bridesmaid", url: "https://images.pexels.com/photos/6500529/pexels-photo-6500529.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"},
      {name: "Indian Traditional", url: "https://images.pexels.com/photos/1589216/pexels-photo-1589216.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"},
      {name: "Muslim Traditional", url: "https://images.unsplash.com/photo-1603651345011-01a536dae46f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1631&q=80"},
      {name: "Groomsman", url: "https://images.unsplash.com/photo-1621510007869-775c2657e580?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"},
      {name: "Jewellery", url: "https://images.pexels.com/photos/3641056/pexels-photo-3641056.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"},
      {name: "Veils", url: "https://images.unsplash.com/photo-1614618586684-7afae48a15d3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=687&q=80"},
    ]

categories.each do |category|
  Category.create(category)
end

puts "Created #{Category.count} categories"
