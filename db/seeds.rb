# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

user = User.new(email: "user@test.com", password: "azerty1")
user_1 = User.new(email: "hello@test.com", password: "azerty1")
user_2 = User.new(email: "coucou@test.com", password: "azerty1")
user_3 = User.new(email: "admin@test.com", password: "azerty1")
user_4 = User.new(email: "guitarist@test.com", password: "azerty1")
user_5 = User.new(email: "pianist@test.com", password: "azerty1")

user.save!
user_1.save!
user_2.save!
user_3.save!
user_4.save!
user_5.save!
