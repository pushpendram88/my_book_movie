# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?


User.create(email: "push@yopmail.com", password: "12345678",password_confirmation: "12345678")

Hall.create(name: "one", number_of_row: 2, number_of_column: 3)
Movie.create(name: "Sholay", genre: "Drama", description: "Lorem Ipsum", format: "A Grade")
MovieHallShow.create(movie_id: 1, hall_id: 1, show_time: Date.today)