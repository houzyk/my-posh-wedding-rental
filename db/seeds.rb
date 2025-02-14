# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts 'Cleaning database...'
Booking.destroy_all
Item.destroy_all
# ! DO NOT DELETE THE COMMENTS FROM HERE TILL ....
=begin
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
=end
# ! ... HERE
puts 'Starting seed'

file = URI.open('https://images.unsplash.com/photo-1502727135886-df285cc8379f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8d2VkZGluZyUyMGRyZXNzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')
item = Item.new(name: 'Amazing Dress', description: 'White dress for ladies', category: Category.find_by(name: "Wedding Dress"), price: 250.0, user: User.first, address: 'Vacoas, Mauritius')
item.photo.attach(io: file, filename: 'dress', content_type: 'image')
item.save
puts 'Item created'
file2 = URI.open('https://images.unsplash.com/photo-1507679799987-c73779587ccf?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c3VpdHN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')
item2 = Item.new(name: 'Slim Fit Signature Suit', description: 'Black suit with soft interior', category: Category.find_by(name: "Suits"), price: 350.0, user: User.first, address: 'Flacq, Mauritius')
item2.photo.attach(io: file2, filename: 'suits', content_type: 'image')
item2.save
puts 'Item created'
file3 = URI.open('https://media.istockphoto.com/photos/beautiful-bridesmaids-in-pink-dresses-posing-and-looking-to-camera-at-picture-id925078924?b=1&k=20&m=925078924&s=170667a&w=0&h=RuTpsEu9gHsDRrufR68HL4MvXngA6nUcuuS-X9NYjUQ=')
item3 = Item.new(name: 'Cinq à Sept Zola Dress', description: 'Pink bridesmaid dress', category: Category.find_by(name: "Bridesmaid"), price: 200.0, user: User.first, address: 'Port-Louis, Mauritius')
item3.photo.attach(io: file3, filename: 'bridesmaid', content_type: 'image')
item3.save
puts 'Item created'
file4 = URI.open('https://media.istockphoto.com/photos/man-and-woman-couple-looking-at-camera-sitting-on-sofa-pune-picture-id1024630156?b=1&k=20&m=1024630156&s=170667a&w=0&h=_OPgGLPFsXxxB4m5AoiiblPZtdOKcvJA4iHK9WywBXg=')
item4 = Item.new(name: 'Silk Dhoti Sherwani', description: 'A must have!', category: Category.find_by(name: "Indian Traditional"), price: 500.0, user: User.first, address: 'Rose-Hill, Mauritius')
item4.photo.attach(io: file4, filename: 'indian', content_type: 'image')
item4.save
puts 'Item created'
file5 = URI.open('https://media.istockphoto.com/photos/modern-muslim-bride-and-groom-picture-id1211282449?b=1&k=20&m=1211282449&s=170667a&w=0&h=CYafRnE1ah_SwCjRnXCs9WDQbFO9cQNvkAXUh7h_U6o=')
item5 = Item.new(name: 'Light Kurta', description: 'White kurta. Hand-made.', category: Category.find_by(name: "Muslim Traditional"), price: 375.0, user: User.first, address: 'Tamarin, Mauritius')
item5.photo.attach(io: file5, filename: 'muslim', content_type: 'image')
item5.save
puts 'Item created'
file6 = URI.open('https://media.istockphoto.com/photos/three-young-men-wearing-tuxedos-picture-id639247682?b=1&k=20&m=639247682&s=170667a&w=0&h=ndZz32_JJQLExqGzosHupIQnPZTDsMZj6oUvf7OonGg=')
item6 = Item.new(name: 'Classic Suit', description: 'Black tuxedo. Still new!', category: Category.find_by(name: "Groomsman"), price: 400.0, user: User.first, address: 'St-Pierre, Mauritius')
item6.photo.attach(io: file6, filename: 'groomsman', content_type: 'image')
item6.save
puts 'Item created'
file7 = URI.open('https://media.istockphoto.com/photos/jewelry-picture-id118199633?b=1&k=20&m=118199633&s=170667a&w=0&h=adiDUP_6maGKPKpmX0SDGSGxr9h5gr85qyj1fZ8vT2E=')
item7 = Item.new(name: 'Gold Plated Rings', description: 'Looks like real gold', category: Category.find_by(name: "Jewellery"), price: 650.0, user: User.first, address: 'Goodlands, Mauritius')
item7.photo.attach(io: file7, filename: 'jewellery', content_type: 'image')
item7.save
puts 'Item created'
file8 = URI.open('https://media.istockphoto.com/photos/back-of-bride-picture-id493633372?b=1&k=20&m=493633372&s=170667a&w=0&h=J0SZEffFL9vkxQaxl80ruMWkFQowvxS2WTw7RQvhmWo=')
item8 = Item.new(name: 'Luxury Veil', description: 'White bridal veil made from quality silk', category: Category.find_by(name: "Veils"), price: 200.0, user: User.first, address: 'Mahebourg, Mauritius')
item8.photo.attach(io: file8, filename: 'veils', content_type: 'image')
item8.save
puts 'Item created'
puts 'Database seeded'
