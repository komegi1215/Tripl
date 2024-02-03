# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

budget = [100000, 5000, 45000, 1500, 700, 3800, 4200, 12000, 21000]

# Destroy all existing trips
Trip.destroy_all
Booking.destroy_all
User.destroy_all

User.create(
  email: "test@email.com",
  password: "123456",
  first_name: "Meg",
  last_name: "Test",
)

User.create(
  email: "test@test.com",
  password: "123456",
  first_name: "Justin",
  last_name: "Test",
)
users = User.all

puts "Users created successfully."

puts "Creating trips! "
# Create 10 trips manually
Trip.create(
  title: "We are going to Hogwarts!",
  description: "Join us as we enchant our way to Hogwarts, where every moment is a spellbinding adventure! Unleash the magic within and let the wizardry begin! Highlights include: castle tour, free potions lecture, lunch at the great hall, and much more! Embark on a magical journey beyond your wildest dreams",
  trip_date: Date.today + 1,
  user: users.sample,
  budget: budget.sample,
  image_url: "https://wallpapers.com/images/hd/the-hogwarts-express-train-1920-x-986-wallpaper-6hqw6d0ba9rgrxol.jpg"
)

Trip.create(
  title: "Narnia",
  description: "Step through the wardrobe and into a world of wonder! Join us on an extraordinary journey to Narnia, where enchantment awaits at every turn. Immerse yourself in a realm of mythical creatures, epic adventures, and timeless magic. Your Narnian adventure begins now – don't just read about it, live the legend! Don't worry about the Ice Queen, Narnia can be so much fun!",
  trip_date: Date.today + 2,
  user: users.sample,
  budget: budget.sample,
  image_url: "https://i.pinimg.com/originals/6f/1d/ef/6f1def41aa773a8811a5aeca1a18bab6.jpg"
)

Trip.create(
  title: "Heaven",
  description: "Experience a glimpse of paradise on Earth – Welcome to 'Heaven', where serenity meets splendor. Elevate your senses in a haven of beauty and tranquility. Unwind, rejuvenate, and savor the divine moments that make life truly extraordinary. Your slice of Heaven awaits, where every moment feels like a touch of celestial bliss. Grab your passport and your halo and come to heaven with us!",
  trip_date: Date.today + 3,
  user: users.sample,
  budget: budget.sample,
  image_url: "https://cdn.catholic.com/wp-content/uploads/AdobeStock_118678637-1200x400.jpeg"
)

Trip.create(
  title: "North Pole",
  description: "Chase the enchantment to the top of the world! Join us on a frosty adventure to the North Pole, where winter's magic comes to life. Embrace the wonder of a snowy paradise, meet Santa's merry helpers, and discover the joy of the season in its purest form. This holiday, make memories at the heart of the Arctic the North Pole, where the spirit of Christmas is always in the air! We hope your'e not on Santa's naughty list, we are going on a reigndeer adventure!",
  trip_date: Date.today + 4,
  user: users.sample,
  budget: budget.sample,
  image_url: "https://uploads.alaska.org/suppliers/_1600xAUTO_crop_center-center_65_none/Santa-Claus-House-07-n3qh6y.jpg"
)

Trip.create(
  title: "Whoville",
  description: "Step into the whimsical wonderland of Whoville, where joy and cheer echo through the streets! Join us in a celebration of heartwarming festivities, colorful characters, and the true spirit of togetherness. Discover the magic that makes every day feel like a holiday in Whoville – where laughter, love, and merriment are the gifts that keep on giving! The Grinch is inviting everyone for some Whoville fun, now that he has a big heart!",
  trip_date: Date.today + 5,
  user: users.sample,
  budget: budget.sample,
  image_url: "https://variety.com/wp-content/uploads/2018/11/2450_fp2_00097r_cmyk.jpg?w=1000"
)

Trip.create(
  title: "Walk on the moon!",
  description: "Experience the extraordinary. Take your own giant leap with a mesmerizing 'Walk on the Moon' adventure! Immerse yourself in the breathtaking beauty of space, feel the weightlessness of lunar exploration, and make history by creating your cosmic footprint. Join us for a celestial journey that transcends boundaries where dreams touch the stars, and you become the astronaut of your own lunar odyssey! Neil Armstrong did it, you can do it too!",
  trip_date: Date.today + 6,
  user: users.sample,
  budget: budget.sample,
  image_url: "https://www.seti.org/sites/default/files/styles/original/public/2020-10/earth-view-from-moon-perspective-footprints-1400px.jpg?itok=hAH2R4i3"
)

Trip.create(
  title: "Hell",
  description: "Brace yourself for a spine-chilling descent into the realm of the extraordinary. Welcome to Hell, where darkness meets daring. Embark on an infernal adventure, confronting your deepest fears and unraveling mysteries that defy the imagination. Dare to explore the shadows and test your mettle in a journey that will leave an everlasting mark on your soul. Hell awaits, where the extraordinary meets the infernal. Take a trip to the dark side!",
  trip_date: Date.today + 7,
  user: users.sample,
  budget: budget.sample,
  image_url: "https://cdn1.epicgames.com/ue/product/Screenshot/Untitled-1-1920x1080-40d871ba3129e359aaab454149e03063.jpg?resize=1&w=1920"
)

Trip.create(
  title: "Disney Cruise Line",
  description: "Sail into a world of enchantment and adventure with Disney Cruise Line! Set course for unparalleled magic on the high seas, where every wave carries the spirit of Disney. From character meet-ups to Broadway-style shows, indulge in a voyage that combines luxury, entertainment, and the beloved Disney touch. Join us for a maritime experience where dreams set sail, and every moment is a fairy tale come true. Sail the seas with Mickey and friends!",
  trip_date: Date.today + 8,
  user: users.sample,
  budget: budget.sample,
  image_url: "https://www.telegraph.co.uk/content/dam/travel/2023/10/17/TELEMMGLPICT000301775154_16975363433720_trans_NvBQzQNjv4Bqyntj27Do1A_uEF6jNSG5Nv4Xpit_DMGvdp2n7FDd82k.jpeg"
)

puts "Trips created successfully."

trips = Trip.all


Booking.create(
  user_id: users.sample,
  trip_id: trips.sample,
  booking_status: 0,
)

Booking.create(
  user_id: users.sample,
  trip_id: trips.sample,
  booking_status: 1,
)

puts "Bookings created successfully."
