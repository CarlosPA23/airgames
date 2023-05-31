# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

User.create([{ first_name: "Harris", last_name: "Grant", address: "147 Carrer del Bruc, Barcelona", email: "harris@test.com", password: "test1234" }, {first_name: "Simon", last_name: "Hu", address: "147 Carrer del Bruc, Barcelona", email: "simon@test.com", password: "test1234" }, {first_name: "Carlos", last_name: "Pena", address: "147 Carrer del Bruc, Barcelona", email: "carlos@test.com", password: "test1234" }, {first_name: "Marien", last_name: "Irzykiewicz", address: "147 Carrer del Bruc, Barcelona", email: "marien@test.com", password: "test1234" }])

file = URI.open("https://fs-prod-cdn.nintendo-europe.com/media/images/10_share_images/games_15/nintendo_switch_4/2x1_NSwitch_TloZTearsOfTheKingdom_Gamepage.jpg")
game = Game.create({ title: "Zelda: Tears of the Kingdom", description: "Explore the vast land—and skies—of Hyrule. An epic adventure across the land and skies of Hyrule awaits in The Legend of Zelda™: Tears of the Kingdom for the Nintendo Switch system. The adventure is yours to create in a world fueled by your imagination.", price: rand(3..10), category: "Switch" })
game.photo.attach(io: file, filename: "#{game.title.first}_#{game.category.first}.png")
game.user = User.find(rand(1..4))
game.save

file = URI.open("https://assets.nuuvem.com/image/upload/v1/products/5e49d770d597ec0f96e130bd/sharing_images/tmffdu3gugeb5al41qil.jpg")
game = Game.create({ title: "Zelda: Breath of the Wild", description: "After a 100-year slumber, Link wakes up alone in a world he no longer remembers. Now the legendary hero must explore a vast and dangerous land and regain his memories before Hyrule is lost forever. Armed only with what he can scavenge, Link sets out to find answers and the resources needed to survive.", price: rand(3..10), category: "Switch" })
game.photo.attach(io: file, filename: "#{game.title.first}_#{game.category.first}.png")
game.user = User.find(rand(1..4))
game.save

file = URI.open("https://www.cnet.com/a/img/resize/8d028b89fbedc16f1ca9584609fd7b435c69d4f0/hub/2018/05/02/92c85a25-1197-4555-bf25-096c8c85c7ea/rdr2-officialart-3840x2160.jpg?auto=webp&fit=crop&height=675&width=1200")
game = Game.create({ title: "Red Dead Redemption 2", description: "After a robbery goes badly wrong in the western town of Blackwater, Arthur Morgan and the Van der Linde gang are forced to flee. With federal agents and the best bounty hunters in the nation massing on their heels, the gang must rob, steal and fight their way across the rugged heartland of America in order to survive.", price: rand(3..10), category: "Xbox" })
game.photo.attach(io: file, filename: "#{game.title.first}_#{game.category.first}.png")
game.user = User.find(rand(1..4))
game.save

file = URI.open("https://i.blogs.es/ec8df6/grand-theft-auto-v-ps5-xbox/840_560.jpeg")
game = Game.create({ title: "Grand Theft Auto V", description: "Grand Theft Auto V is an action-adventure game played from either a third-person or first-person perspective. Players complete missions—linear scenarios with set objectives—to progress through the story. Outside of the missions, players may freely roam the open world.", price: rand(3..10), category: "Xbox" })
game.photo.attach(io: file, filename: "#{game.title.first}_#{game.category.first}.png")
game.user = User.find(rand(1..4))
game.save

file = URI.open("https://i.blogs.es/ec8df6/grand-theft-auto-v-ps5-xbox/840_560.jpeg")
game = Game.create({ title: "Grand Theft Auto V", description: "Grand Theft Auto V is an action-adventure game played from either a third-person or first-person perspective. Players complete missions—linear scenarios with set objectives—to progress through the story. Outside of the missions, players may freely roam the open world.", price: rand(3..10), category: "Playstation 5" })
game.photo.attach(io: file, filename: "#{game.title.first}_#{game.category.first}.png")
game.user = User.find(rand(1..4))
game.save

file = URI.open("https://www.cnet.com/a/img/resize/8d028b89fbedc16f1ca9584609fd7b435c69d4f0/hub/2018/05/02/92c85a25-1197-4555-bf25-096c8c85c7ea/rdr2-officialart-3840x2160.jpg?auto=webp&fit=crop&height=675&width=1200")
game = Game.create({ title: "Red Dead Redemption 2", description: "After a robbery goes badly wrong in the western town of Blackwater, Arthur Morgan and the Van der Linde gang are forced to flee. With federal agents and the best bounty hunters in the nation massing on their heels, the gang must rob, steal and fight their way across the rugged heartland of America in order to survive.", price: rand(3..10), category: "Playstation 5" })
game.photo.attach(io: file, filename: "#{game.title.first}_#{game.category.first}.png")
game.user = User.find(rand(1..4))
game.save

file = URI.open("https://fs-prod-cdn.nintendo-europe.com/media/images/10_share_images/games_15/wiiu_14/SI_WiiU_MarioKart8_image1600w.jpg")
game = Game.create({ title: "Mario Kart 8", description: "Mario Kart 8 is a kart racing game; players control characters from the Mario universe to race in go-karts around a course. They may hinder their opponents or improve their performance using power-ups found in item boxes throughout the course.", price: rand(3..10), category: "Switch" })
game.photo.attach(io: file, filename: "#{game.title.first}_#{game.category.first}.png")
game.user = User.find(rand(1..4))
game.save

file = URI.open("https://fs-prod-cdn.nintendo-europe.com/media/images/10_share_images/games_15/nintendo_switch_4/H2x1_NSwitch_SuperMarioOdyssey.jpg")
game = Game.create({ title: "Super Mario Odyessy", description: "Mario must travel to worlds unknown in order to stop Bowser from marrying Princess Peach.", price: rand(3..10), category: "Switch" })
game.photo.attach(io: file, filename: "#{game.title.first}_#{game.category.first}.png")
game.user = User.find(rand(1..4))
game.save

file = URI.open("https://static1.cbrimages.com/wordpress/wp-content/uploads/2021/09/Super-Mario-3D-World-scaled-2.jpg")
game = Game.create({ title: "Super Mario 3D World", description: "The game's plot centers around Mario, Luigi, Princess Peach, and Toad having to rescue the rulers of the Sprixie Kingdom, the Sprixie Princesses from Bowser", price: rand(3..10), category: "Switch" })
game.photo.attach(io: file, filename: "mario_world_#{game.category.first}.png")
game.user = User.find(rand(1..4))
game.save

file = URI.open("https://image.api.playstation.com/vulcan/ap/rnd/202301/0312/Zsj1OOvQfrznwAADaMjlX2wF.jpg")
game = Game.create({ title: "Fifa 23", description: "EA SPORTS™ FIFA 23 brings The World's Game to the pitch, with both men's and women's FIFA World Cup™ tournaments, the addition of women's club teams and new ways to play your favorite modes.", price: rand(3..10), category: "Playstation 5" })
game.photo.attach(io: file, filename: "#{game.title.first}_#{game.category.first}.png")
game.user = User.find(rand(1..4))
game.save

file = URI.open("https://image.api.playstation.com/vulcan/ap/rnd/202302/2810/d44ec02d8b99c047bf238688580a2868388f1b2e28b2a37b.png")
game = Game.create({ title: "Madden NFL 23", description: "Featuring all-new ways to control your impact with every decision, Madden NFL 23 lets you call the shots in Franchise with free agency and trade logic updates. Play your way into the history books in Face of the Franchise: The League and assemble the most powerful roster in all of Madden Ultimate Team™.", price: rand(3..10), category: "Playstation 5" })
game.photo.attach(io: file, filename: "#{game.title.first}_#{game.category.first}.png")
game.user = User.find(rand(1..4))
game.save

file = URI.open("https://images.pushsquare.com/1493d91f02200/god-of-war-ragnarok-ps5-ps4-playstation.large.jpg")
game = Game.create({ title: "God of War Ragnarok", description: "Following the death of Kratos' second wife, Faye (Atreus' mother), the two embark on a journey to fulfill her request that her ashes be spread at the highest peak of the nine realms. Kratos keeps his troubled past a secret from Atreus, who is unaware of his divine nature.", price: rand(3..10), category: "Playstation 5" })
game.photo.attach(io: file, filename: "#{game.title.first}_#{game.category.first}.png")
game.user = User.find(rand(1..4))
game.save

file = URI.open("https://image.api.playstation.com/vulcan/ap/rnd/202208/0921/3XopdGAJGRy3xNQKnQDvaCRs.png")
game = Game.create({ title: "Hogwarts Legacy", description: "The player character possesses the power to control a mysterious ancient magic, and holds the key to an 'ancient secret' that threatens the stability of the wizarding world. Their mission is to discover the reasons behind the resurgence of this forgotten magic and those who are trying to harness its power.", price: rand(3..10), category: "Playstation 5" })
game.photo.attach(io: file, filename: "#{game.title.first}_#{game.category.first}.png")
game.user = User.find(rand(1..4))
game.save

file = URI.open("https://image.api.playstation.com/vulcan/ap/rnd/202301/0312/Zsj1OOvQfrznwAADaMjlX2wF.jpg")
game = Game.create({ title: "Fifa 23", description: "EA SPORTS™ FIFA 23 brings The World's Game to the pitch, with both men's and women's FIFA World Cup™ tournaments, the addition of women's club teams and new ways to play your favorite modes.", price: rand(3..10), category: "Xbox" })
game.photo.attach(io: file, filename: "#{game.title.first}_#{game.category.first}.png")
game.user = User.find(rand(1..4))
game.save

file = URI.open("https://image.api.playstation.com/vulcan/ap/rnd/202302/2810/d44ec02d8b99c047bf238688580a2868388f1b2e28b2a37b.png")
game = Game.create({ title: "Madden NFL 23", description: "Featuring all-new ways to control your impact with every decision, Madden NFL 23 lets you call the shots in Franchise with free agency and trade logic updates. Play your way into the history books in Face of the Franchise: The League and assemble the most powerful roster in all of Madden Ultimate Team™.", price: rand(3..10), category: "Xbox" })
game.photo.attach(io: file, filename: "#{game.title.first}_#{game.category.first}.png")
game.user = User.find(rand(1..4))
game.save

file = URI.open("https://images.pushsquare.com/1493d91f02200/god-of-war-ragnarok-ps5-ps4-playstation.large.jpg")
game = Game.create({ title: "God of War Ragnarok", description: "Following the death of Kratos' second wife, Faye (Atreus' mother), the two embark on a journey to fulfill her request that her ashes be spread at the highest peak of the nine realms. Kratos keeps his troubled past a secret from Atreus, who is unaware of his divine nature.", price: rand(3..10), category: "Xbox" })
game.photo.attach(io: file, filename: "#{game.title.first}_#{game.category.first}.png")
game.user = User.find(rand(1..4))
game.save

file = URI.open("https://image.api.playstation.com/vulcan/ap/rnd/202208/0921/3XopdGAJGRy3xNQKnQDvaCRs.png")
game = Game.create({ title: "Hogwarts Legacy", description: "The player character possesses the power to control a mysterious ancient magic, and holds the key to an 'ancient secret' that threatens the stability of the wizarding world. Their mission is to discover the reasons behind the resurgence of this forgotten magic and those who are trying to harness its power.", price: rand(3..10), category: "Xbox" })
game.photo.attach(io: file, filename: "#{game.title.first}_#{game.category.first}.png")
game.user = User.find(rand(1..4))
game.save
