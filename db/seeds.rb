# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


  user = User.create(email: 'christopher.campbell@outlook.com', password: 'upsdown7', password_confirmation: 'upsdown7')
  10.times do |n|
    Course.create(title: 'Rails 5 Masterclass: Build Ajax web application from scratch', description: "Nullam gravida finibus orci. Proin facilisis purus neque, a placerat ipsum finibus sit amet. Pellentesque pharetra eget justo ac aliquam.", cost: 29.99, user: user)
  end

