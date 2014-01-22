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

sleep(5.second)

backpack = compassion.products.create(description: "Herschel Supply Co. manufactures the finest quality bags, backpacks, and travel accessories, Herschel manufactures well-made goods with timeless styles, various patterns, and basic and trending colors.", item_id: 'B0077BZ6GI')
puts "Created Herschel Backpack!"

sleep(5.second)

glass = compassion.products.create(description: "In the long and illustrious history of whisky, there has never been a single definitive glass that the whisky world could call its own. Wine, Champagne, Brandy, each has its own recognizable glass associated with it.", item_id: 'B003TMCNI8')
puts "Created whiskey glass!"

sleep(5.second)

blanket = compassion.products.create(description: "Wool, made in the USA by the foremost blanket maker, Pendleton. All four sides are bound in contrasting wool. This will serve to keep you warm through the cold winter days.", item_id: 'B002QIMYYO')
puts "Created blanket!"

sleep(1.second)

wallet = compassion.products.create(description: "These beautiful wallets are individually hand made here in Springfield, MO from high quality, tough cowhide leather. They are hand-laced with super-strong akngaroo lace by the owner of Springfield Leather Company, Kevin Hopkins. The scary thing is that he laces them while he drives. And you thought texting was dangerous!", item_id: 'B005QDKLTG')
puts "Created wallet!"

sleep(5.second)

notes = compassion.products.create(description: "Writing is good exercise. It's good for your mind in the same way that riding a bike is good for your legs. It's a way to communicate, capture a thought, grow an idea. It helps you think, be more creative, and...it's fun.", item_id: 'B005N7DDEU')
puts "Created notes!"

sleep(5.second)

bulb = compassion.products.create(description: "These handcrafted, vintage bulbs are the perfect complement to any antique or contemporary decor. Inspired by Thomas Edison's original creation, the Nostalgic Collection offers unparalleled aesthetic appeal with an antique finish, defined steeple and intricate filament design.", item_id: 'B001797M6S')
puts "Created bulb!"

sleep(5.second)

forthehungry = Charity.create({name: "Food For the Hungry", description: "Food for the Hungry (FH) is a Christian organization serving the poor globally since 1971. We reflect the love of Christ in short-term emergency relief and long-term work to end world hunger. Learn about FH's vision, mission and values.", affiliate_id: 102
  })
puts "Created charity Food For the Hungry"

sleep(5.second)

pipe = forthehungry.products.create(description: "During the last hundred years, Kapp and Peterson has grown tremendously without losing sight of their original dedication to quality, handcrafted products at a reasonable price.", item_id: 'B007Z3N9C6')
puts "Created pipe!"

sleep(5.second)

kinfolk = forthehungry.products.create(description: "Kinfolk magazine—launched to great acclaim and instant buzz in 2011—is a quarterly journal about understated, unfussy entertaining.", item_id: '1579655327')
puts "Created kinfolk!"

sleep(5.second)

javascriptbook = forthehungry.products.create(description: "This full-color book adopts a visual approach to teaching JavaScript & jQuery, showing you how to make web pages more interactive and interfaces more intuitive through the use of inspiring code examples, infographics, and photography.", item_id: '1118531647')
puts "Created javascript!"

sleep(5.second)

stool = forthehungry.products.create(description: "Embracing a contemporary, youthful approach to the updated traditional lifestyle, Kittery has reemerged with even brighter, cleaner colors Discover the whimsy at the heart of our designs.", item_id: 'B0088XR2WK')
puts "Created stool!"

sleep(5.second)

chemex = forthehungry.products.create(description: "Known as a pristine coffeemaker, Chemex employs all of the chemically correct methods for brewing. Its hourglass shaped flask is made entirely of glass, a chemically inert material that does not absorb odors or chemical residues..", item_id: 'B0000YWF5E')
puts "Created stool!"

sleep(5.second)

razor = forthehungry.products.create(description: "Straight Razor shaving is different then Modern Shaving in which razors are ready to shave. Straight Razor needs to be honed on stone and there after need a stropping on a leather strap to get them shave ready.", item_id: 'B003ZLZ77W')
puts "Created stool!"




