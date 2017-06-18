# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts '建立一个账号'
u = User.new
u.email = "admin@1.com"
u.password = "abcabc"
u.password_confirmation = "abcabc"
u.save

puts '建立四个groups'
Group.create!(title: '天天听英语社群', description: '在这里每天都要听英语', user_id: '1')
Group.create!(title: '天天说英语社群', description: '在这里每天都要说英语', user_id: '1')
Group.create!(title: '天天读英语社群', description: '在这里每天都要读英语', user_id: '1')
Group.create!(title: '天天写英语社群', description: '在这里每天都要写英语', user_id: '1')
