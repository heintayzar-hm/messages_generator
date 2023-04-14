# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


message = Message.create(content: "Welcome to our world", header: "Hello World!");
message2 = Message.create(content: "Welcome to our universe", header: "Hello Universe!");
message3 = Message.create(content: "Welcome to our galaxy", header: "Hello Galaxy!");
message4 = Message.create(content: "Welcome to our solar system", header: "Hello Solar System!");
message5 = Message.create(content: "Welcome to our planet", header: "Hello Planet!");

puts "Created #{Message.count} messages"
