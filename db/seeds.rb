require 'faker'

puts "Cleaning webdevs database..."
Reservation.destroy_all

puts "Cleaning webdevs database..."
Webdev.destroy_all

puts "Cleaning users database..."
User.destroy_all

puts "Creating users..."

user1 = User.create(email: "vancauwenbergh.matthieu@gmail.com", password: "Azertyuiop", name: "Mathieu")
user1.photo.attach(io: File.open('app/assets/images/matthieu.jpeg'), filename: 'matthieu.jpeg')
user1.save!

User.create(email: "charloutte19999@gmail.com", password: "Azertyuiop", name: "Charlotte")

user3 = User.create(email: "betancourth.gab@gmail.com", password: "Azertyuiop", name: "Gabrielle")
user3.photo.attach(io: File.open('app/assets/images/gabrielle.jpeg'), filename: 'gabrielle.jpeg')
user3.save!

user4 = User.create(email: "quentin.test@gmail.com", password: "Azertyuiop", name: "Quentin")
user4.photo.attach(io: File.open('app/assets/images/quentin.jpeg'), filename: 'quentin.jpeg')
user4.save!

user5 = User.create(email: "thomas.test@gmail.com", password: "Azertyuiop", name: "Thomas")
user5.photo.attach(io: File.open('app/assets/images/thomas.png'), filename: 'thomas.png')
user5.save!

user6 = User.create(email: "gabirelle.test@gmail.com", password: "Azertyuiop", name: "Gabriella")
user6.photo.attach(io: File.open('app/assets/images/gabriella.jpeg'), filename: 'gabriella.jpeg')
user6.save!

user7 = User.create(email: "momo.test@gmail.com", password: "Azertyuiop", name: "Momo")
user7.photo.attach(io: File.open('app/assets/images/momo.jpeg'), filename: 'momo.jpeg')
user7.save!

user8 = User.create(email: "jose.testt@gmail.com", password: "Azertyuiop", name: "Jose")
user8.photo.attach(io: File.open('app/assets/images/jose.png'), filename: 'jose.png')
user8.save!

user9 = User.create(email: "djoulde.test@gmail.com", password: "Azertyuiop", name: "Junior")
user9.photo.attach(io: File.open('app/assets/images/junior.jpeg'), filename: 'junior.jpeg')
user9.save!

user10 = User.create(email: "pedro.testt@gmail.com", password: "Azertyuiop", name: "Pedro Pan")
user10.photo.attach(io: File.open('app/assets/images/pedro.jpeg'), filename: 'pedro.jpeg')
user10.save!

user11= User.create(email: "cassandra.testt@gmail.com", password: "Azertyuiop", name: "Cassandra")
user11.photo.attach(io: File.open('app/assets/images/cass.jpeg'), filename: 'cass.jpeg')
user11.save!

User.create(email: "olivier.testt@gmail.com", password: "Azertyuiop", name: "Olivier")

puts "Creating webdevs..."

webdev1 = Webdev.new(service_type: "Website Development", price: 180, experience_year: 5, availability: "1Oh/week", description: "Responsive design ensures optimal user experience across all devices.")
webdev1.user = user1
webdev1.photo.attach(io: File.open('app/assets/images/matthieu.jpeg'), filename: 'matthieu.jpeg')
webdev1.save!

webdev2 = Webdev.new(service_type: "E-commerce Development", price: 150, experience_year: 3, availability: "1Oh/week", description: "HTML5 and CSS3 provide powerful tools for web development.")
webdev2.user = user1
webdev2.photo.attach(io: File.open('app/assets/images/matthieu.jpeg'), filename: 'matthieu.jpeg')
webdev2.save!

webdev3 = Webdev.new(service_type: "Mobile App Development", price: 250, experience_year: 7, availability: "1Oh/week", description: "JavaScript brings interactivity and dynamic functionality to websites.")
webdev3.user = user3
webdev3.photo.attach(io: File.open('app/assets/images/gabrielle.jpeg'), filename: 'gabrielle.jpeg')
webdev3.save!

webdev4 = Webdev.new(service_type: "UI/UX Design", price: 800, experience_year: 2, availability: "1Oh/week", description: "Bootstrap framework accelerates the process of building modern web pages.")
webdev4.user = user4
webdev4.photo.attach(io: File.open('app/assets/images/quentin.jpeg'), filename: 'quentin.jpeg')
webdev4.save!

webdev5 = Webdev.new(service_type: "Front-end Development", price: 200, experience_year: 4, availability: "1Oh/week", description: "AJAX allows seamless data retrieval and updates without page refresh.")
webdev5.user = user5
webdev5.photo.attach(io: File.open('app/assets/images/thomas.png'), filename: 'thomas.png')
webdev5.save!

webdev6 = Webdev.new(service_type: "Back-end Development", price: 300, experience_year: 6, availability: "1Oh/week", description: "SEO techniques improve website visibility and search engine rankings.")
webdev6.user = user6
webdev6.photo.attach(io: File.open('app/assets/images/gabriella.jpeg'), filename: 'gabriella.jpeg')
webdev6.save!

webdev7 = Webdev.new(service_type: "WordPress Development", price: 350, experience_year: 3, availability: "1Oh/week", description: "RESTful APIs enable efficient communication between web applications.")
webdev7.user = user7
webdev7.photo.attach(io: File.open('app/assets/images/momo.jpeg'), filename: 'momo.jpeg')
webdev7.save!

webdev8 = Webdev.new(service_type: "Custom Web Application Development", price: 2, experience_year: 8, availability: "1Oh/week", description: "Version control systems like Git help manage collaborative web development.")
webdev8.user = user8
webdev8.photo.attach(io: File.open('app/assets/images/jose.png'), filename: 'jose.png')
webdev8.save!

webdev9 = Webdev.new(service_type: "Graphic Design", price: 400, experience_year: 8, availability: "1Oh/week", description: "Progressive web apps combine the best of web and mobile experiences.")
webdev9.user = user9
webdev9.photo.attach(io: File.open('app/assets/images/junior.jpeg'), filename: 'junior.jpeg')
webdev9.save!

webdev10 = Webdev.new(service_type: "SEO Optimization", price: 550, experience_year: 1, availability: "1Oh/week", description: "Testing and debugging are crucial steps for ensuring web application quality.")
webdev10.user = user10
webdev10.photo.attach(io: File.open('app/assets/images/pedro.jpeg'), filename: 'pedro.jpeg')
webdev10.save!

webdev11 = Webdev.new(service_type: "Responsive Web Design", price: 800, experience_year: 3, availability: "20h/week", description: "Responsive design ensures optimal user experience across all devices.")
webdev11.user = user11
webdev11.photo.attach(io: File.open('app/assets/images/cass.jpeg'), filename: 'cass.jpeg')
webdev11.save!

# webdev12 = Webdev.new(service_type: "Frontend Development", price: 600, experience_year: 2, availability: "15h/week", description: "HTML5 and CSS3 provide powerful tools for web development.")
# webdev12.user = user12
# webdev10.photo.attach(io: File.open('app/assets/images/pedro.jpeg'), filename: 'pedro.jpeg')
# webdev10.save!



puts "Webdevs created successfully!"
