# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

#dummy users (first seeding)
# User.create(username:"user1", email:"user1@email.com", password:"password1")
# User.create(username:"user2", email:"user2@email.com", password:"password2")
# User.create(username:"user3", email:"user3@email.com", password:"password3")
# User.create(username:"user4", email:"user4@email.com", password:"password4")
# User.create(username:"user5", email:"user5@email.com", password:"password5")
# User.create(username:"user6", email:"user6@email.com", password:"password6")
# User.create(username:"user7", email:"user7@email.com", password:"password7")
# User.create(username:"user8", email:"user8@email.com", password:"password8")
# User.create(username:"user9", email:"user9@email.com", password:"password9")



# Create dummy messages
user1 = User.find_by(username: 'user1')
user2 = User.find_by(username: 'user2')
user3 = User.find_by(username: 'user3')

# Seed messages associated with users
Message.create(body: 'Hello, my name is user1', user: user1)
Message.create(body: 'Hi there, user1. My name is user2', user: user2)
Message.create(body: 'Welcome to the chat! I am user3', user: user3)
