# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Product.destroy_all
Charity.destroy_all
puts "Destroyed all products and charitites."

compassion = Charity.create({name: "Compassion International", img: "http://dribbletheworld.com/wp-content/uploads/2012/03/Compassion-International.jpg", description: "Compassion International is a Christian child sponsorship organization dedicated to the long-term development of children living in poverty around the world.", affiliate_id: 101
  })

puts "Created charity Compassion-International"

backpack = compassion.products.create(description: "Herschel Supply Co. manufactures the finest quality bags, backpacks, and travel accessories, Herschel manufactures well-made goods with timeless styles, various patterns, and basic and trending colors.", item_id: 'B0077BZ6GI')

puts "Created Herschel Backpack!"

glass = compassion.products.create(description: "In the long and illustrious history of whisky, there has never been a single definitive glass that the whisky world could call its own. Wine, Champagne, Brandy, each has its own recognizable glass associated with it.", item_id: 'B003TMCNI8')

puts "Created whiskey glass!"

kindfire HD = compassion.products.create(description: "The new Kindle Fire HD is a full-featured HD tablet at an SD price. There's more to enjoy than ever before with a stunning HD display, faster performance, longer battery life, and lighter design.", item_id: 'B00CU0NSCU')

puts "Created kindlefire HD!"