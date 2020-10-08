# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Seeding Users..."
me = User.new(name: "Vincent Wittek", email: "wittek.vincent@gmail.com", age: 20, gender: "male", description: "Hi there, my name is Vincent Wittek, I am a 20 year old guy from Germany (Munich) who currently studies Psychology at UvA, and I am excited for almost any project or activity. No matter if its a trip or something more serious like a project, I am in! 
My own hobbies include composing music, building websites, growing plants, watching adult cartoons and playing video games ;). I am always happy to get invited to an invite from anybody, so feel free to send me a message!", instagram: "www.instagram.com", facebook: "www.facebook.com", linkedin: "www.linkedin.com", password: "123456")
image = URI.open("https://res.cloudinary.com/dgnfxdfou/image/upload/v1600368838/egyqiwl6qk0j09ruyljcz8uk9y69.jpg")
me.image.attach(io: image, filename: "VincentImage", content_type: "image/jpg")
me.save!
puts "First User seeded!"
me = User.new(name: "Test Account", email: "test@gmail.com", age: 20, gender: "male", description: "This is a test account, its use is to make requests and events, but the guy also looks pretty nice. Right now I am just writing text to make the space in the profile show better ;).", instagram: "www.instagram.com", facebook: "www.facebook.com", linkedin: "www.linkedin.com", password: "123456")
image = URI.open("https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/3f01db52-f675-48dc-9c91-f245d99f1486/d2nqynw-af694fd2-e1ba-4e9c-badb-630a48474599.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOiIsImlzcyI6InVybjphcHA6Iiwib2JqIjpbW3sicGF0aCI6IlwvZlwvM2YwMWRiNTItZjY3NS00OGRjLTljOTEtZjI0NWQ5OWYxNDg2XC9kMm5xeW53LWFmNjk0ZmQyLWUxYmEtNGU5Yy1iYWRiLTYzMGE0ODQ3NDU5OS5qcGcifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6ZmlsZS5kb3dubG9hZCJdfQ.vgj19DpSqoncvBDutgwuXP6Z-UBL5sUaZDUlz-TNUiw")
me.image.attach(io: image, filename: "RandomPersonImage", content_type: "image/jpg")
me.save!
puts "Second User seeded!"
puts "Seeding Users done!"

puts "Seeding Categories..."
created_category = Category.new(category: "Sports")
created_category.save!
created_category = Category.new(category: "Project")
created_category.save!
created_category = Category.new(category: "Creative")
created_category.save!
created_category = Category.new(category: "Startup")
created_category.save!
created_category = Category.new(category: "Social")
created_category.save!
created_category = Category.new(category: "Other")
created_category.save!
puts "Seeding Categories done!"

puts "Seeding Events..."
event1 = Event.new(title: "Beerpong Competition", date: "2020-09-09 00:00:00", time: "2020-09-09 21:00:13", location: "Vondelpark", description: "This is a test descritpion, I hope to make it better soon!",  user_id: 1, category_id: 5)
image1 = URI.open("https://www.marktconcurrent.nl/wp-content/uploads/2019/07/beerpong-500x329.png")
event1.image.attach(io: image1, filename: "BeerpongImage", content_type: "image/jpg")
event1.save!
puts "First event seeded!"
event2 = Event.new(title: "Book Club", date: "2020-09-09 00:00:00", time: "2020-09-09 21:00:13", location: "CREA UvA", description: "This is another test descritpion, I hope to make it better soon!",  user_id: 2, category_id: 3)
image2 = URI.open("https://images.unsplash.com/photo-1529122260263-d9dd9413d371?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80")
event2.image.attach(io: image2, filename: "BookClubImage", content_type: "image/jpg")
event2.save!
puts "Second event seeded!"
event3 = Event.new(title: "Meditation Class", date: "2020-09-09 00:00:00", time: "2020-09-09 21:00:13", location: "Oosterpark Amsterdam", description: "This is a third test descritpion, I hope to make it better soon!",  user_id: 2, category_id: 6)
image3 = URI.open("https://images.unsplash.com/photo-1506126613408-eca07ce68773?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=731&q=80")
event3.image.attach(io: image3, filename: "MeditationImage", content_type: "image/jpg")
event3.save!
puts "Third event seeded!"
puts "Seeding Events done!"


# This is just to mak eht next push different