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

backpack = compassion.products.create(name: "Herschel Backpack", description: "Herschel Supply Co. manufactures the finest quality bags, backpacks, and travel accessories, Herschel manufactures well-made goods with timeless styles, various patterns, and basic and trending colors.", img: "http://www.highsnobiety.com/news/wp-content/uploads/2011/04/Herschel-Supply-Co.-x-Stussy-Co.-Backpacks-00.jpg", item_id: 'B0077BZ6GI')

puts "Created Herschel Backpack!"

shoe = compassion.products.create(name: "Stolzle Glencairn Whiskey Glass ", description: "In the long and illustrious history of whisky, there has never been a single definitive glass that the whisky world could call its own. Wine, Champagne, Brandy, each has its own recognizable glass associated with it.", img: "http://ecx.images-amazon.com/images/I/41YZou-ZgnL._SY300_.jpg", item_id: 'B003TMCNI8')

puts "New whiskey glass!"