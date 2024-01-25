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
  description: "Let's take a fun train trip to Hogwarts.",
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

puts "Trips created successfully."
