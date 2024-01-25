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
  user: users.sample
)

Trip.create(
  title: "Narnia",
  description: "Don't worry about the Ice Queen, Narnia can be so much fun!",
  trip_date: Date.today + 2,
  user: users.sample
)

Trip.create(
  title: "Heaven",
  description: "Grab your passport and your halo and come to heaven with us!",
  trip_date: Date.today + 3,
  user: users.sample
)

Trip.create(
  title: "North Pole",
  description: "We hope your'e not on Santa's naughty list, we are going on a reigndeer adventure!",
  trip_date: Date.today + 4,
  user: users.sample
)

Trip.create(
  title: "Whoville",
  description: "The Grinch is inviting everyone for some Whoville fun, now that he has a big heart!",
  trip_date: Date.today + 5,
  user: users.sample
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
