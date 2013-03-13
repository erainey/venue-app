# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#puts 'ROLES'
['admin', 'owner', 'guest'].each do |role|
  Role.find_or_create_by_name({ :name => role }, :without_protection => true)
  puts 'role: ' << role
end
puts 'DEFAULT USERS'
user = User.find_or_create_by_email :username => 'admin', :email => 'admin@admin.com', :password => 'admin123', :password_confirmation => 'admin123'
puts 'user: ' << user.username
user.add_role :admin
user2 = User.find_or_create_by_email :username => 'owner', :email => 'owner@example.com', :password => 'changeme', :password_confirmation => 'changeme'
puts 'user: ' << user2.username
user2.add_role :owner
user3 = User.find_or_create_by_email :username => 'guest', :email => 'guest@example.com', :password => 'changeme', :password_confirmation => 'changeme'
puts 'user: ' << user3.username
user2.add_role :guest
