# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(user_name: 'Steve', password: 'test', password_confirmation: 'test')
User.create(user_name: 'Sungwon', password: 'password', password_confirmation: 'password')
User.create(user_name: 'Anthony', password: 'deadpool', password_confirmation: 'deadpool')
