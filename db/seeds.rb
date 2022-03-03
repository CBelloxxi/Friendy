# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"
Order.destroy_all
Donation.destroy_all
Donee.destroy_all

file = URI.open('https://hungryturtlecode.com/assets/much_rails_doge-21c3d78712750b99c8b860cb3b1542486fc859b6a5a2621fa590da3e9f8e37f5.jpg')
donee = Donee.new(user_id: 1, first_name: 'Chris', last_name: "Bellocci", description: "Lives in Belvedere", location: "London")
donee.photo.attach(io: file, filename: 'wow.jpg', content_type: 'image/jpg')
donee.save!
