# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Deleting previous database"

Booking.destroy_all
Review.destroy_all
Game.destroy_all
User.destroy_all

puts "Database deleted"

addresses = [
  "Carrer de Provença, 123, Barcelona, Spain",
  "Avinguda Diagonal, 456, Barcelona, Spain",
  "Carrer de Mallorca, 789, Barcelona, Spain",
  "Rambla de Catalunya, 234, Barcelona, Spain",
  "Passeig de Gràcia, 567, Barcelona, Spain",
  "Carrer de Valencia, 890, Barcelona, Spain",
  "Avinguda del Paral·lel, 1234, Barcelona, Spain",
  "Carrer de Balmes, 5678, Barcelona, Spain",
  "Rambla del Raval, 9012, Barcelona, Spain",
  "Plaça de Catalunya, 3456, Barcelona, Spain",
  "Carrer de Pau Claris, 7890, Barcelona, Spain",
  "Avinguda Meridiana, 12345, Barcelona, Spain",
  "Carrer del Comte d'Urgell, 67890, Barcelona, Spain",
  "Carrer de Girona, 23456, Barcelona, Spain",
  "Passeig de Sant Joan, 78901, Barcelona, Spain",
  "Carrer de Diputació, 23456, Barcelona, Spain",
  "Rambla de Poblenou, 78901, Barcelona, Spain",
  "Carrer de Tarragona, 23456, Barcelona, Spain",
  "Avinguda de Roma, 78901, Barcelona, Spain",
  "Carrer de Rocafort, 23456, Barcelona, Spain",
  "Carrer de Gran Via de les Corts Catalanes, 78901, Barcelona, Spain",
  "Avinguda del Paral·lel, 23456, Barcelona, Spain",
  "Carrer de Muntaner, 78901, Barcelona, Spain",
  "Carrer de Pujades, 23456, Barcelona, Spain",
  "Carrer de Balmes, 78901, Barcelona, Spain",
  "Carrer de Llúria, 23456, Barcelona, Spain",
  "Carrer de Casanova, 78901, Barcelona, Spain",
  "Carrer de Marina, 23456, Barcelona, Spain",
  "Carrer de Bailén, 78901, Barcelona, Spain",
  "Carrer de la Marina, 23456, Barcelona, Spain",
  "Carrer de Villarroel, 78901, Barcelona, Spain",
  "Carrer de Mallorca, 23456, Barcelona, Spain",
  "Carrer de Casp, 78901, Barcelona, Spain",
  "Carrer de València, 23456, Barcelona, Spain",
  "Carrer de Muntaner, 78901, Barcelona, Spain",
  "Carrer de Paris, 23456, Barcelona, Spain",
  "Carrer de Còrsega, 78901, Barcelona, Spain",
  "Carrer de la Diputació, 23456, Barcelona, Spain",
  "Carrer del Comte Borrell, 78901, Barcelona, Spain",
  "Carrer de Nàpols, 23456, Barcelona, Spain",
  "Carrer de Balmes, 78901, Barcelona, Spain",
  "Carrer de la Gran Via de les Corts Catalanes, 23456, Barcelona, Spain",
  "Carrer de Pau Claris, 78901, Barcelona, Spain",
  "Carrer de la Diagonal, 23456, Barcelona, Spain",
  "Carrer de Rosselló, 78901, Barcelona, Spain",
  "Carrer de Passeig de Gràcia, 23456, Barcelona, Spain",
  "Carrer de Girona, 78901, Barcelona, Spain",
  "Carrer de Bailén, 23456, Barcelona, Spain",
  "Carrer de Pujades, 78901, Barcelona, Spain"
]

status = ["Pending", "Rejected", "Accepted"]

# USERS

puts "Adding users... please wait"

User.create([{ first_name: "Harris", last_name: "Grant", address: "147 Carrer del Bruc, Barcelona", email: "harris@test.com", password: "test1234" }, {first_name: "Simon", last_name: "Hu", address: "147 Carrer del Bruc, Barcelona", email: "simon@test.com", password: "test1234" }, {first_name: "Carlos", last_name: "Pena", address: "147 Carrer del Bruc, Barcelona", email: "carlos@test.com", password: "test1234" }, {first_name: "Marien", last_name: "Irzykiewicz", address: "147 Carrer del Bruc, Barcelona", email: "marien@test.com", password: "test1234" }])

puts "Users added :)"

# GAMES CONSOLE

puts "Adding games... this might take a while"

file = URI.open("https://fs-prod-cdn.nintendo-europe.com/media/images/10_share_images/games_15/nintendo_switch_4/2x1_NSwitch_TloZTearsOfTheKingdom_Gamepage.jpg")
game = Game.create({ title: "Zelda: Tears of the Kingdom", description: "Explore the vast land—and skies—of Hyrule. An epic adventure across the land and skies of Hyrule awaits in The Legend of Zelda™: Tears of the Kingdom for the Nintendo Switch system. The adventure is yours to create in a world fueled by your imagination.", price: rand(3..10), category: "Console", address: addresses.sample })
game.photo.attach(io: file, filename: "#{game.title.first}_#{game.category.first}.png")
game.user = User.all.sample
game.save

file = URI.open("https://assets.nuuvem.com/image/upload/v1/products/5e49d770d597ec0f96e130bd/sharing_images/tmffdu3gugeb5al41qil.jpg")
game = Game.create({ title: "Zelda: Breath of the Wild", description: "After a 100-year slumber, Link wakes up alone in a world he no longer remembers. Now the legendary hero must explore a vast and dangerous land and regain his memories before Hyrule is lost forever. Armed only with what he can scavenge, Link sets out to find answers and the resources needed to survive.", price: rand(3..10), category: "Console", address: addresses.sample })
game.photo.attach(io: file, filename: "#{game.title.first}_#{game.category.first}.png")
game.user = User.all.sample
game.save

file = URI.open("https://www.cnet.com/a/img/resize/8d028b89fbedc16f1ca9584609fd7b435c69d4f0/hub/2018/05/02/92c85a25-1197-4555-bf25-096c8c85c7ea/rdr2-officialart-3840x2160.jpg?auto=webp&fit=crop&height=675&width=1200")
game = Game.create({ title: "Red Dead Redemption 2", description: "After a robbery goes badly wrong in the western town of Blackwater, Arthur Morgan and the Van der Linde gang are forced to flee. With federal agents and the best bounty hunters in the nation massing on their heels, the gang must rob, steal and fight their way across the rugged heartland of America in order to survive.", price: rand(3..10), category: "Console", address: addresses.sample })
game.photo.attach(io: file, filename: "#{game.title.first}_#{game.category.first}.png")
game.user = User.all.sample
game.save

file = URI.open("https://i.blogs.es/ec8df6/grand-theft-auto-v-ps5-xbox/840_560.jpeg")
game = Game.create({ title: "Grand Theft Auto V", description: "Grand Theft Auto V is an action-adventure game played from either a third-person or first-person perspective. Players complete missions—linear scenarios with set objectives—to progress through the story. Outside of the missions, players may freely roam the open world.", price: rand(3..10), category: "Console", address: addresses.sample })
game.photo.attach(io: file, filename: "#{game.title.first}_#{game.category.first}.png")
game.user = User.all.sample
game.save

file = URI.open("https://fs-prod-cdn.nintendo-europe.com/media/images/10_share_images/games_15/wiiu_14/SI_WiiU_MarioKart8_image1600w.jpg")
game = Game.create({ title: "Mario Kart 8", description: "Mario Kart 8 is a kart racing game; players control characters from the Mario universe to race in go-karts around a course. They may hinder their opponents or improve their performance using power-ups found in item boxes throughout the course.", price: rand(3..10), category: "Console", address: addresses.sample })
game.photo.attach(io: file, filename: "#{game.title.first}_#{game.category.first}.png")
game.user = User.all.sample
game.save

file = URI.open("https://fs-prod-cdn.nintendo-europe.com/media/images/10_share_images/games_15/nintendo_switch_4/H2x1_NSwitch_SuperMarioOdyssey.jpg")
game = Game.create({ title: "Super Mario Odyessy", description: "Mario must travel to worlds unknown in order to stop Bowser from marrying Princess Peach.", price: rand(3..10), category: "Console", address: addresses.sample })
game.photo.attach(io: file, filename: "#{game.title.first}_#{game.category.first}.png")
game.user = User.all.sample
game.save

file = URI.open("https://static1.cbrimages.com/wordpress/wp-content/uploads/2021/09/Super-Mario-3D-World-scaled-2.jpg")
game = Game.create({ title: "Super Mario 3D World", description: "The game's plot centers around Mario, Luigi, Princess Peach, and Toad having to rescue the rulers of the Sprixie Kingdom, the Sprixie Princesses from Bowser", price: rand(3..10), category: "Console", address: addresses.sample })
game.photo.attach(io: file, filename: "mario_world_#{game.category.first}.png")
game.user = User.all.sample
game.save

file = URI.open("https://img.freepik.com/free-vector/soccer-ball-realistic-white-black-picture_1284-8506.jpg")
game = Game.create({ title: "Football", description: "Rent my football for very nice price", price: rand(1..10), category: "Sports", address: addresses.sample })
game.photo.attach(io: file, filename: "#{game.title.first}#{game.category.first}.png")
game.user = User.all.sample
game.save

file = URI.open("https://cdn.shopify.com/s/files/1/0683/1249/8453/products/GilbertBarbarian1.jpg?height=645&pad_color=fff&v=1674667830&width=645")
game = Game.create({ title: "Rugby", description: "Rent my rugby ball for such a nice price", price: rand(1..10), category: "Sports", address: addresses.sample })
game.photo.attach(io: file, filename: "#{game.title.first}#{game.category.first}.png")
game.user = User.all.sample
game.save

file = URI.open("https://static.vecteezy.com/system/resources/previews/001/844/211/original/tennis-racket-design-illustration-isolated-on-white-background-free-vector.jpg")
game = Game.create({ title: "Tennis", description: "I've got two tennis racquets but you've got find your own balls", price: rand(1..10), category: "Sports", address: addresses.sample })
game.photo.attach(io: file, filename: "#{game.title.first}#{game.category.first}.png")
game.user = User.all.sample
game.save

file = URI.open("https://media0.giphy.com/media/v1.Y2lkPTc5MGI3NjExYjFhNzhlZGVjNjk4NDc1MWVjOWQwZmE3NThlODMxNmVjOTFkZDU4YiZlcD12MV9pbnRlcm5hbF9naWZzX2dpZklkJmN0PWc/NYBVJUGdiJdG8/giphy.gif")
game = Game.create({ title: "Monopoly", description: "Please rent my monopoly board, I really need the money", price: rand(1..10), category: "Board", address: addresses.sample })
game.photo.attach(io: file, filename: "#{game.title.first}#{game.category.first}.png")
game.user = User.all.sample
game.save

file = URI.open("https://fitatsea.com/wp-content/uploads/2021/03/Scrabble-Original-Game.jpg")
game = Game.create({ title: "Scrabble", description: "Ancient scrabble game, missing a few keys but still works", price: rand(1..10), category: "Board", address: addresses.sample })
game.photo.attach(io: file, filename: "#{game.title.first}#{game.category.first}.png")
game.user = User.all.sample
game.save

file = URI.open("https://m.media-amazon.com/images/I/51XsBrbfl5L.jpg")
game = Game.create({ title: "Card Deck", description: "This isn't a board game but if you want to rent my cards then that's awesome", price: rand(1..10), category: "Board", address: addresses.sample })
game.photo.attach(io: file, filename: "#{game.title.first}#{game.category.first}.png")
game.user = User.all.sample
game.save

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Cards_Against_Humanity_logo_2009.svg/640px-Cards_Against_Humanity_logo_2009.svg.png")
game = Game.create({ title: "Cards Against Humanity", description: "Not for the faint heartened. Not my fault if you get offended.", price: rand(1..10), category: "Board", address: addresses.sample })
game.photo.attach(io: file, filename: "#{game.title.first}#{game.category.first}.png")
game.user = User.all.sample
game.save

file = URI.open("https://kidseatincolor.com/wp-content/uploads/2022/02/eggs-e1648216369366.jpeg")
game = Game.create({ title: "Throw Eggs", description: "I have some eggs which you can throw at cars or people if you want.", price: rand(1..10), category: "Silly", address: addresses.sample })
game.photo.attach(io: file, filename: "#{game.title.first}#{game.category.first}.png")
game.user = User.all.sample
game.save

file = URI.open("https://images.stockx.com/images/Full-Send-Boxing-Gloves-Red.jpg?fit=fill&bg=FFFFFF&w=1200&h=857&fm=webp&auto=compress&dpr=2&trim=color&updated_at=1629179587&q=75")
game = Game.create({ title: "Get Punched", description: "I'm willing to punch you or one of your friends... but accept no liability for the consequences.", price: rand(1..10), category: "Silly", address: addresses.sample })
game.photo.attach(io: file, filename: "#{game.title.first}#{game.category.first}.png")
game.user = User.all.sample
game.save

file = URI.open("https://www.spanish-horse-boutique.com/wp-content/uploads/2020/05/Apfelschimmel-2020.jpg")
game = Game.create({ title: "Horse Kicking", description: "Stand behind my horse and see if it kicks you.", price: rand(1..10), category: "Silly", address: addresses.sample })
game.photo.attach(io: file, filename: "#{game.title.first}#{game.category.first}.png")
game.user = User.all.sample
game.save

file = URI.open("https://www.popsci.com/uploads/2019/03/18/KLJRQW2QKEVSWLLKMWGTEEP4IA.jpg?auto=webp")
game = Game.create({ title: "Human Slingshot", description: "My giant catapult will launch you across Barcelona.", price: rand(1..10), category: "Silly", address: addresses.sample })
game.photo.attach(io: file, filename: "#{game.title.first}#{game.category.first}.png")
game.user = User.all.sample
game.save

file = URI.open("https://www.casinos.us/blog/wp-content/uploads/2022/11/russian-roulette-rules-and-history.jpg")
game = Game.create({ title: "Russian Roulette", description: "You can use my gun to play Russian Roulette. Obviously I only provide one bullet. Enjoy!!", price: rand(1..10), category: "Silly", address: addresses.sample })
game.photo.attach(io: file, filename: "#{game.title.first}#{game.category.first}.png")
game.user = User.all.sample
game.save

puts "Games added :)"

puts "Adding bookings..."

user = User.all.sample
game = Game.all.sample
booking = Booking.create({ start_date: "2023-06-02", end_date: "2023-06-04", total_price: 10, user_id: user.id, game_id: game.id, status: status.sample.to_s})
booking.save

user = User.all.sample
game = Game.all.sample
booking = Booking.create({ start_date: "2023-06-02", end_date: "2023-06-04", total_price: 20, user_id: user.id, game_id: game.id, status: status.sample.to_s})
booking.save

user = User.all.sample
game = Game.all.sample
booking = Booking.create({ start_date: "2023-06-02", end_date: "2023-06-04", total_price: 30, user_id: user.id, game_id: game.id, status: status.sample.to_s})
booking.save

user = User.all.sample
game = Game.all.sample
booking = Booking.create({ start_date: "2023-06-02", end_date: "2023-06-04", total_price: 20, user_id: user.id, game_id: game.id, status: status.sample.to_s})
booking.save

user = User.all.sample
game = Game.all.sample
booking = Booking.create({ start_date: "2023-06-02", end_date: "2023-06-04", total_price: 50, user_id: user.id, game_id: game.id, status: status.sample.to_s})
booking.save

user = User.all.sample
game = Game.all.sample
booking = Booking.create({ start_date: "2023-06-02", end_date: "2023-06-04", total_price: 40, user_id: user.id, game_id: game.id, status: status.sample.to_s})
booking.save

user = User.all.sample
game = Game.all.sample
booking = Booking.create({ start_date: "2023-07-02", end_date: "2023-07-04", total_price: 30, user_id: user.id, game_id: game.id, status: status.sample.to_s})
booking.save

user = User.all.sample
game = Game.all.sample
booking = Booking.create({ start_date: "2023-07-02", end_date: "2023-07-04", total_price: 20, user_id: user.id, game_id: game.id, status: status.sample.to_s})
booking.save

user = User.all.sample
game = Game.all.sample
booking = Booking.create({ start_date: "2023-07-02", end_date: "2023-07-04", total_price: 15, user_id: user.id, game_id: game.id, status: status.sample.to_s})
booking.save

user = User.all.sample
game = Game.all.sample
booking = Booking.create({ start_date: "2023-07-02", end_date: "2023-07-04", total_price: 10, user_id: user.id, game_id: game.id, status: status.sample.to_s})
booking.save

puts "Bookings added :)"
