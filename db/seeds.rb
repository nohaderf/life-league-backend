# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


u1 = User.create({first_name: "Freda", last_name: "Hon", username: "nohaderf", email: "nohaderf@gmail.com", password:"freda", friend: false })
f1 = User.create({first_name: "Harry", last_name: "Potter", username: "gryffindor_rulez", email: "harry@hogwarts.edu", password:"freda", friend: true })
f2 = User.create({first_name: "Ron", last_name: "Weasley", username: "ron_ron", email: "ronald@hogwarts.edu", password:"freda", friend: true })
f3 = User.create({first_name: "Hermione", last_name: "Granger", username: "crookshanks123", email: "hermione@hogwawrts.edu", password:"freda", friend: true })
f4 = User.create({first_name: "Rachel", last_name: "Green", username: "ray_ray", email: "rachel@friends.com", password:"freda", friend: false })
f5 = User.create({first_name: "Ross", last_name: "Geller", username: "red_ross", email: "ross@friends.com", password:"freda", friend: false })
f6 = User.create({first_name: "Moinca", last_name: "Geller", username: "lil_harmonica", email: "moinca@friends.com", password:"freda", friend: false })
f7 = User.create({first_name: "Joey", last_name: "Tribbiani", username: "baby_kangeroo", email: "joey@friends.com", password:"freda", friend: false })
f8 = User.create({first_name: "Phoebe", last_name: "Buffay", username: "princess_consuela_banana_hammock", email: "phoebe@friends.com", password:"freda", friend: false })
f9 = User.create({first_name: "Chandler", last_name: "Bing", username: "chandler_bong", email: "chandler@friends.com", password:"freda", friend: false })
f10 = User.create({first_name: "Porter", last_name: "Robinson", username: "potaro", email: "porter@porter.com", password:"freda", friend: false })


l1= League.create({name: "League That Must Not Be Named", notes: "Loser buys lunch!", duration: 4})

UserLeague.create({league: l1, user: u1, rank: 2})
UserLeague.create({league: l1, user: f1, rank: 3})
UserLeague.create({league: l1, user: f2, rank: 4})
UserLeague.create({league: l1, user: f3, rank: 1})

UserFriend.create({user: u1, user: f1})
UserFriend.create({user: u1, user: f2})
UserFriend.create({user: u1, user: f3})

t1 = Task.create({user: u1, name: "Lose 10lbs.", points: 10, active: false, category: "Health/Fitness"})
t2 = Task.create({user: u1, name: "Read more books.", points: 0, active: true, category: "Personal/Hobby"})
t3 = Task.create({user: u1, name: "Learn Python", points: 5, active: false, category: "Career/School"})

t3 = Task.create({user: f2, name: "Study for Potions exam.", points: 2, active: true, category: "Career/School"})
t4 = Task.create({user: f1, name: "Learn transfiguration.", points: 7, active: true, category: "Personal/Hobby"})

t5 = Task.create({user: f3, name: "Study for the OWLS.", points: 30, active: true, category: "Career/School"})
t6 = Task.create({user: f3, name: "Free the house elves", points: 5, active: true, category: "Personal Hobby"})
t7 = Task.create({user: f3, name: "Practice (broom) flying.", points: 1, active: true, category: "Personal/Hobby"})

DedicatedTime.create({task: t1, date: "02/02/21", time_spent: 2})
DedicatedTime.create({task: t1, date: "02/03/21", time_spent: 1})
DedicatedTime.create({task: t1, date: "02/04/21", time_spent: 1})
DedicatedTime.create({task: t1, date: "02/05/21", time_spent: 2})
DedicatedTime.create({task: t1, date: "02/06/21", time_spent: 1})
DedicatedTime.create({task: t1, date: "02/07/21", time_spent: 1})
DedicatedTime.create({task: t1, date: "02/08/21", time_spent: 2})

DedicatedTime.create({task: t3, date: "02/02/21", time_spent: 0})
DedicatedTime.create({task: t3, date: "02/03/21", time_spent: 1})
DedicatedTime.create({task: t3, date: "02/04/21", time_spent: 0})
DedicatedTime.create({task: t3, date: "02/05/21", time_spent: 0})
DedicatedTime.create({task: t3, date: "02/06/21", time_spent: 0})
DedicatedTime.create({task: t3, date: "02/07/21", time_spent: 0})
DedicatedTime.create({task: t3, date: "02/08/21", time_spent: 1})

DedicatedTime.create({task: t4, date: "02/02/21", time_spent: 1})
DedicatedTime.create({task: t4, date: "02/03/21", time_spent: 1})
DedicatedTime.create({task: t4, date: "02/04/21", time_spent: 1})
DedicatedTime.create({task: t4, date: "02/05/21", time_spent: 1})
DedicatedTime.create({task: t4, date: "02/06/21", time_spent: 1})
DedicatedTime.create({task: t4, date: "02/07/21", time_spent: 1})
DedicatedTime.create({task: t4, date: "02/08/21", time_spent: 1})

DedicatedTime.create({task: t5, date: "02/02/21", time_spent: 5})
DedicatedTime.create({task: t5, date: "02/03/21", time_spent: 3})
DedicatedTime.create({task: t5, date: "02/04/21", time_spent: 5})
DedicatedTime.create({task: t5, date: "02/05/21", time_spent: 2})
DedicatedTime.create({task: t5, date: "02/06/21", time_spent: 10})
DedicatedTime.create({task: t5, date: "02/07/21", time_spent: 10})
DedicatedTime.create({task: t5, date: "02/08/21", time_spent: 5})



puts "Seeds planted 🌱"
