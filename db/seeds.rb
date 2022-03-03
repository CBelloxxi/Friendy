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
User.destroy_all
Donee.destroy_all

puts "Creating User..."

user = User.create(first_name: 'test', last_name: 'test', email: 'test@test.com', password: '123456')
user.save!

puts "Finished Creating User!"

puts "Creating Donees..."

file = URI.open('https://media.istockphoto.com/photos/up-close-photo-of-a-homeless-man-picture-id157168262?k=20&m=157168262&s=612x612&w=0&h=H6Sx1QXnKRNBpR_V9vE9vXoHyq2KHSe5yzT49KK4idA=')
donee = Donee.new(
  user: user,
  first_name: 'Chris',
  last_name: "Witaker",
  description: "Sometimes near St.Johns, he is cold all the time, been homeless for 4 years, and is trying to get off the streets.",
  location: "London"
)
donee.photo.attach(io: file, filename: 'Chris_Witaker.jpeg', content_type: 'image/jpeg')
donee.save!

file = URI.open('https://media.istockphoto.com/photos/homeless-man-in-tokyo-japan-picture-id907853072?k=20&m=907853072&s=612x612&w=0&h=DH6YoL_GqYFzMS-fIYa_1lvni72pkKfaqbnKpvMdavU=')
donee = Donee.new(
  user: user,
  first_name: 'Tommy',
  last_name: "Tahana",
  description: "Around Sutton Park, he has alcohol addictions and has been on the streets 2 years.",
  location: "Birmingham"
)
donee.photo.attach(io: file, filename: 'Tommy_Tahana.jpeg', content_type: 'image/jpeg')
donee.save!

file = URI.open('https://media.istockphoto.com/photos/happy-homeless-man-smiling-at-the-camera-outdoors-picture-id1346079651?k=20&m=1346079651&s=612x612&w=0&h=hjMb2GwjWYbq0bpS1IW1SYtLF5_U0Z8rO61kkHVgTGc=')
donee = Donee.new(
  user: user,
  first_name: 'Derick',
  last_name: "Romeo",
  description: "Usually near Grey's Monument, has problems with alcohol/drugs and been homeless for 1 year.",
  location: "Newcastle"
)
donee.photo.attach(io: file, filename: 'Derick_Romeo.jpeg', content_type: 'image/jpeg')
donee.save!

file = URI.open('https://media.istockphoto.com/photos/happy-homeless-man-picture-id177410923?k=20&m=177410923&s=612x612&w=0&h=8EZri-MYG5FbI8EsHKbJ11pxq5Yy886lfZTWjJLlbM8=')
donee = Donee.new(
  user: user,
  first_name: 'Robert',
  last_name: "Jones",
  description: "Close to Beatles Statue, has developed chronic pneumonia, from being out on the streets over 3 years.",
  location: "Liverpool"
)
donee.photo.attach(io: file, filename: 'Robert_Jones.jpeg', content_type: 'image/jpeg')
donee.save!

file = URI.open('https://media.istockphoto.com/photos/happy-homeless-african-american-man-picture-id166092322?k=20&m=166092322&s=612x612&w=0&h=WweOqdVXyUN04uTa0ZL-eREa12EpgpwFvU5LvbgFsl4=')
donee = Donee.new(
  user: user,
  first_name: 'Noah',
  last_name: "Bohemiano",
  description: "Seen near Blackpool War Memorial, has drug addictions, is psychotic and is a war vet.",
  location: "Blackpool"
)
donee.photo.attach(io: file, filename: 'Noah_Bohemiano.jpeg', content_type: 'image/jpeg')
donee.save!

file = URI.open('https://media.istockphoto.com/photos/homeless-woman-with-bad-teeth-picture-id166092361?k=20&m=166092361&s=612x612&w=0&h=rvhqv1uD5-u77obvNP9j_4npBlzRNUY8uYuNaeHCTE8=')
donee = Donee.new(
  user: user,
  first_name: 'Tanya',
  last_name: "Bell",
  description: "Usually around Battersea park, has no family, she has been homeless for 5 years, she was in and out of care as a child.",
  location: "London"
)
donee.photo.attach(io: file, filename: 'Tanya_Bell.jpeg', content_type: 'image/jpeg')
donee.save!

file = URI.open('https://media.istockphoto.com/photos/homeless-woman-on-a-city-street-picture-id157396048?k=20&m=157396048&s=612x612&w=0&h=plXabuh3FRm7XUOGP6LUCl-DF8cx6iMC8PuYR8UucKI=')
donee = Donee.new(
  user: user,
  first_name: 'Denise',
  last_name: "Williams",
  description: "Saw her near Nelsons Statue has drug and alcohol addictions, she has struggled with financial aid to get off the streets for the past year.",
  location: "Birmingham"
)
donee.photo.attach(io: file, filename: 'Denise_Williams.jpeg', content_type: 'image/jpeg')
donee.save!

file = URI.open('https://media.istockphoto.com/photos/elderly-homeless-senior-woman-in-an-abandoned-ruin-picture-id1281009268?k=20&m=1281009268&s=612x612&w=0&h=EGuuwWGkvFCTJ7iaKqoqznsvC1azMxvFy0LiqmFZd8Y=')
donee = Donee.new(
  user: user,
  first_name: 'Karen',
  last_name: "Jamerson",
  description: "Seen near Gateshead Millenium Bridge, she's quite elderly, and has chronic back pain, she doesn't know where to get aid and has become depressed.",
  location: "Newcastle"
)
donee.photo.attach(io: file, filename: 'Karen_Jamerson.jpeg', content_type: 'image/jpeg')
donee.save!

file = URI.open('https://media.istockphoto.com/photos/homeless-woman-living-out-of-a-car-picture-id143922926?k=20&m=143922926&s=612x612&w=0&h=bDCfXMCvFlqfBYS0IG9sryqOKhutuaEm5qC8q5KTw64=')
donee = Donee.new(
  user: user,
  first_name: 'Sarah',
  last_name: "Daniels",
  description: "Seen her near Queen Victoria Monument, she was made homeless by her abusive partner and is currently seeking shelter.",
  location: "Liverpool"
)
donee.photo.attach(io: file, filename: 'Sarah_Daniels.jpeg', content_type: 'image/jpeg')
donee.save!

file = URI.open('https://media.istockphoto.com/photos/vulnerable-teenage-girl-sleeping-on-the-street-picture-id1154989126?k=20&m=1154989126&s=612x612&w=0&h=6bAjpx49sPCSNJMQvRXKZh7RAl7lrqsAahuvxQ35Hbw=')
donee = Donee.new(
  user: user,
  first_name: 'Demi',
  last_name: "Taylor",
  description: "Seen near Blackpool high street, she aged out of care and ended up homeless, now has drug addictions.",
  location: "Blackpool"
)
donee.photo.attach(io: file, filename: 'Demi_Taylor.jpeg', content_type: 'image/jpeg')
donee.save!

puts "Finished Creating Donees!"
