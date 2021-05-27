# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Scoreboard.destroy_all
Account.destroy_all

Account.create(username: 'John', password: 'SpeedyJohn22')
Scoreboard.create(username: 'John', score: 9100, gamemode: 'classic')
Scoreboard.create(username: 'John', score: 8900, gamemode: 'classic')
