# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#

Post.create title: "Hello World", body: "Welcome to stuff. Enjoy n'at."
Post.create title: "Tournaments Begin Soon", body: "Go sign up for LOL and stuff otherwise yer a bunch of jags."

Event.create name: "Kickboxing Tournament",
             starts_at: DateTime.now,
             ends_at: (DateTime.new + 6.hours)
