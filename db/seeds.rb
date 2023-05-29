# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
User.destroy_all

puts "Creating users..."
User.create(email: "vancauwenbergh.matthieu@gmail.com", password: "Azertyuiop", name: "Mathieu")
User.create(email: "charloutte19999@gmail.com", password: "Azertyuiop", name: "Charlotte")
User.create(email: "betancourth.gab@gmail.com", password: "Azertyuiop", name: "Gabrielle")
User.create(email: "quentin.test@gmail.com", password: "Azertyuiop", name: "Quentin")
User.create(email: "thomas.test@gmail.com", password: "Azertyuiop", name: "Thomas")
User.create(email: "gabirelle.test@gmail.com", password: "Azertyuiop", name: "Gabrielle")
User.create(email: "momo.test@gmail.com", password: "Azertyuiop", name: "Momo")
User.create(email: "jose.testt@gmail.com", password: "Azertyuiop", name: "Jose")
User.create(email: "djoulde.test@gmail.com", password: "Azertyuiop", name: "Junior")
User.create(email: "pedro.testt@gmail.com", password: "Azertyuiop", name: "Pedro Pan")
User.create(email: "cassandra.testt@gmail.com", password: "Azertyuiop", name: "Cassandra")
User.create(email: "olivier.testt@gmail.com", password: "Azertyuiop", name: "Olivier")
