# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Seeding Users..."
me = User.new(name: "Vincent Wittek", email: "wittek.vincent@gmail.com", age: 20, gender: "male", description: "Hi there", instagram: "www.instagram.com", facebook: "www.facebook.com", linkedin: "www.linkedin.com")
me.save
puts "Seeding Users done!"
puts "Seeding Events..."
event1 = Event.new(title: "testevent", date: "2020-09-09 00:00:00", time: "2020-09-09 21:00:13", location: "Testlocation", description: "This is a test descritpion, I hope to make it better soon!",  user_id: 1)
event1.save
event2 = Event.new(title: "testevent2", date: "2020-09-09 00:00:00", time: "2020-09-09 21:00:13", location: "Another Testlocation", description: "This is another test descritpion, I hope to make it better soon!",  user_id: 1)
event2.save
event3 = Event.new(title: "testevent3", date: "2020-09-09 00:00:00", time: "2020-09-09 21:00:13", location: "A Third Testlocation", description: "This is a third test descritpion, I hope to make it better soon!",  user_id: 1)
event3.save
puts "Seeding Events done!"