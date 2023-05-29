# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
User.destroy_all
Webdev.destroy_all

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


puts "Creating webdev..."
Webdev.create(service_type: "Website Development", price: 180, experience_year: 5, user_id: 1)
Webdev.create(service_type: "E-commerce Development", price: 150, experience_year: 3, user_id: 1)
Webdev.create(service_type: "Mobile App Development", price: 250, experience_year: 7, user_id: 3)
Webdev.create(service_type: "UI/UX Design", price: 800, experience_year: 2, user_id: 4)
Webdev.create(service_type: "Front-end Development", price: 200, experience_year: 4, user_id: 5)
Webdev.create(service_type: "Back-end Development", price: 300, experience_year: 6, user_id: 6)
Webdev.create(service_type: "WordPress Development", price: 350, experience_year: 3, user_id: 7)
Webdev.create(service_type: "Custom Web Application Development", price: 2, experience_year: 8, user_id: 8)
Webdev.create(service_type: "Graphic Design", price: 400, experience_year: 8, user_id: 9)
Webdev.create(service_type: "SEO Optimization", price: 550, experience_year: 1, user_id: 10)
