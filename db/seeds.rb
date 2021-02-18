# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

UserLeague.destroy_all
DedicatedTime.destroy_all
LeagueTask.destroy_all
Task.destroy_all
User.destroy_all
League.destroy_all


u1 = User.create({first_name: "Freda", last_name: "Hon", username: "nohaderf", email: "nohaderf@gmail.com", password:"freda", friend: false, current_user_id: nil, image_url: "https://i.imgur.com/x8LLHwc.jpg" })
f1 = User.create({first_name: "Harry", last_name: "Potter", username: "gryffindor_rulez", email: "harry@hogwarts.edu", password:"freda", friend: true, current_user_id: nil, image_url: "https://images.ctfassets.net/usf1vwtuqyxm/3SQ3X2km8wkQIsQWa02yOY/8801d7055a3e99dae8e60f54bb4b1db8/HarryPotter_WB_F4_HarryPotterMidshot_Promo_080615_Port.jpg?w=914" })
f2 = User.create({first_name: "Ron", last_name: "Weasley", username: "gingerbeer", email: "ronald@hogwarts.edu", password:"freda", friend: true, current_user_id: nil, image_url: "https://images.immediate.co.uk/production/volatile/sites/3/2016/05/108890.jpg?webp=true&quality=90&resize=620%2C413"})
f3 = User.create({first_name: "Hermione", last_name: "Granger", username: "crookshanks123", email: "hermione@hogwawrts.edu", password:"freda", friend: true, current_user_id: nil, image_url: "https://static.wikia.nocookie.net/harrypotter/images/3/34/Hermione_Granger.jpg"})
f4 = User.create({first_name: "Rachel", last_name: "Green", username: "ray_ray", email: "rachel@friends.com", password:"freda", friend: true, current_user_id: nil, image_url: "https://tvline.com/wp-content/uploads/2019/06/friends-rachel.jpg?w=620"})
f5 = User.create({first_name: "Ross", last_name: "Geller", username: "dino_ross", email: "ross@friends.com", password:"freda", friend: false, current_user_id: nil, image_url: "https://static.wikia.nocookie.net/friends/images/3/3a/David_Schwimmer_9.jpg"})
f6 = User.create({first_name: "Moinca", last_name: "Geller", username: "lil_harmonica", email: "moinca@friends.com", password:"freda", friend: true, current_user_id: nil, image_url: "https://play-images-prod-cms.tech.tvnz.co.nz/api/v1/web/image/content/dam/images/entertainment/shows/f/friends/articles/friends-characters-monica.jpg.2017-11-27T17:11:32+13:00.jpg?width=960&height=540"})
f7 = User.create({first_name: "Joey", last_name: "Tribbiani", username: "baby_kangeroo", email: "joey@friends.com", password:"freda", friend: true, current_user_id: nil, image_url: "https://a1cf74336522e87f135f-2f21ace9a6cf0052456644b80fa06d4f.ssl.cf2.rackcdn.com/images/characters_opt/p-friends-matt-leblanc.jpg"})
f8 = User.create({first_name: "Phoebe", last_name: "Buffay", username: "princess_consuela", email: "phoebe@friends.com", password:"freda", friend: true, current_user_id: nil, image_url: "https://static01.nyt.com/images/2019/09/08/arts/08friends-phoebe6/08friends-phoebe6-jumbo.jpg"})
f9 = User.create({first_name: "Chandler", last_name: "Bing", username: "chandler_bong", email: "chandler@friends.com", password:"freda", friend: true, current_user_id: nil , image_url: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F6%2F2016%2F08%2Fgettyimages-138426899.jpg"})
f10 = User.create({first_name: "Porter", last_name: "Robinson", username: "potaro", email: "porter@porter.com", password:"freda", friend: false, current_user_id: nil, image_url: "https://i.ytimg.com/vi/5tE8OseCNuY/maxresdefault.jpg"})


l1= League.create({name: "League That Must Not Be Named", notes: "Loser buys lunch!", duration: 4})
l2= League.create({name: "I'm Not Crying, You're Crying", notes: "Performs at open mic night", duration: 4})

UserLeague.create({league: l1, user: u1, rank: 2})
UserLeague.create({league: l1, user: f1, rank: 3})
UserLeague.create({league: l1, user: f2, rank: 4})
UserLeague.create({league: l1, user: f3, rank: 1})

UserLeague.create({league: l2, user: u1, rank: 1})
UserLeague.create({league: l2, user: f7, rank: 3})
UserLeague.create({league: l2, user: f5, rank: 2})


t1 = Task.create({user: u1, name: "Lose 10lbs.", points: 10, active: false, category: "Health/Fitness"})
t2 = Task.create({user: u1, name: "Read more books.", points: 7, active: true, category: "Personal/Hobby"})
t3 = Task.create({user: u1, name: "Learn Python", points: 5, active: false, category: "Career/School"})

t4 = Task.create({user: f2, name: "Study for Potions exam.", points: 2, active: true, category: "Career/School"})
t5 = Task.create({user: f1, name: "Learn transfiguration.", points: 7, active: true, category: "Personal/Hobby"})

t6 = Task.create({user: f3, name: "Study for the OWLS.", points: 30, active: true, category: "Career/School"})
t7 = Task.create({user: f3, name: "Free the house elves", points: 5, active: true, category: "Personal Hobby"})
t8 = Task.create({user: f3, name: "Practice (broom) flying.", points: 1, active: true, category: "Personal/Hobby"})

t9 = Task.create({user: f7, name: "Become a movie star", points: 12, active: true, category: "Career/School"})
t10 = Task.create({user: f7, name: "Learn French", points: 1, active: true, category: "Personal Hobby"})
t11 = Task.create({user: f5, name: "Publish paleontology paper", points: 20, active: true, category: "Career/School"})

LeagueTask.create({league: l1, task: t1})
LeagueTask.create({league: l1, task: t2})
LeagueTask.create({league: l1, task: t3})
LeagueTask.create({league: l1, task: t4})
LeagueTask.create({league: l1, task: t5})
LeagueTask.create({league: l1, task: t6})
LeagueTask.create({league: l1, task: t7})
LeagueTask.create({league: l1, task: t8})

LeagueTask.create({league: l2, task: t1})
LeagueTask.create({league: l2, task: t2})
LeagueTask.create({league: l2, task: t3})
LeagueTask.create({league: l2, task: t9})
LeagueTask.create({league: l2, task: t10})
LeagueTask.create({league: l2, task: t11})


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
