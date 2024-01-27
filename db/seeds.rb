# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
users = User.all

# Destroy all existing trips
Trip.destroy_all

puts "Creating trips! "
# Create 10 trips manually
Trip.create(
  title: "We are going to Hogwarts!",
  description: "Let's take a fun train trip to Hogwarts. Highlights include: castle tour, free potions lecture, lunch at the great hall, and much more!",
  trip_date: Date.today + 1,
  user: users.sample,
  image_url: "https://wallpapers.com/images/hd/the-hogwarts-express-train-1920-x-986-wallpaper-6hqw6d0ba9rgrxol.jpg"
)

Trip.create(
  title: "Narnia",
  description: "Don't worry about the Ice Queen, Narnia can be so much fun!",
  trip_date: Date.today + 2,
  user: users.sample,
  image_url: "https://i.pinimg.com/originals/6f/1d/ef/6f1def41aa773a8811a5aeca1a18bab6.jpg"
)

Trip.create(
  title: "Heaven",
  description: "Grab your passport and your halo and come to heaven with us!",
  trip_date: Date.today + 3,
  user: users.sample,
  image_url: "https://cdn.catholic.com/wp-content/uploads/AdobeStock_118678637-1200x400.jpeg"
)

Trip.create(
  title: "North Pole",
  description: "We hope your'e not on Santa's naughty list, we are going on a reigndeer adventure!",
  trip_date: Date.today + 4,
  user: users.sample,
  image_url: "https://uploads.alaska.org/suppliers/_1600xAUTO_crop_center-center_65_none/Santa-Claus-House-07-n3qh6y.jpg"
)

Trip.create(
  title: "Whoville",
  description: "The Grinch is inviting everyone for some Whoville fun, now that he has a big heart!",
  trip_date: Date.today + 5,
  user: users.sample,
  image_url: "https://variety.com/wp-content/uploads/2018/11/2450_fp2_00097r_cmyk.jpg?w=1000"
)

Trip.create(
  title: "Walk on the moon!",
  description: "Neil Armstrong did it, you can do it too!",
  trip_date: Date.today + 6,
  user: users.sample,
  image_url: "https://www.seti.org/sites/default/files/styles/original/public/2020-10/earth-view-from-moon-perspective-footprints-1400px.jpg?itok=hAH2R4i3"
)

Trip.create(
  title: "Hell",
  description: "Take a trip to the dark side!",
  trip_date: Date.today + 7,
  user: users.sample,
  image_url: "https://cdn1.epicgames.com/ue/product/Screenshot/Untitled-1-1920x1080-40d871ba3129e359aaab454149e03063.jpg?resize=1&w=1920"
)

Trip.create(
  title: "Disney Cruise Line",
  description: "Sail the seas with Mickey and friends!",
  trip_date: Date.today + 8,
  user: users.sample,
  image_url: "https://www.telegraph.co.uk/content/dam/travel/2023/10/17/TELEMMGLPICT000301775154_16975363433720_trans_NvBQzQNjv4Bqyntj27Do1A_uEF6jNSG5Nv4Xpit_DMGvdp2n7FDd82k.jpeg"
)

puts "Trips created successfully."

Booking.destroy_all
Booking.create(
  user_id: 1,
  trip_id: 1,
  booking_status: 0,
)

Booking.create(
  user_id: 1,
  trip_id: 2,
  booking_status: 1,
)


puts "Bookings created successfully."
