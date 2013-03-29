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

puts 'DEFAULT VENUES'
venue = Venue.create(
		:name => "Fontainebleau Miami Beach",
    :address_one => "4441 Collins Ave",
    :address_two => "",
    :address_three => "",
    :city => "Miami Beach",
    :state => "FL",
    :zipcode => "33140",
    :phone => "305-538-2000",
    :website => "http://www.fontainebleau.com/",
    :email => "info@fontainebleau.com",
    :facebook => "http://www.facebook.com/pages/Fontainebleau-Miami-Beach/78458342904?v=wall",
    :twitter => "http://twitter.com/Fontainebleau",
    :google_plus => "http://www.google.com",
    :youtube => "http://www.youtube.com/fontainebleaumb",
    :description => "The Fontainebleau Miami Beach or the Fontainebleau Hotel is one of the most historically and architecturally significant hotels on Miami Beach.",
    :price => 5,
    :capacity => 10000,
    :published => true,
    :featured => true
	)

puts 'DEFAULT TYPES'
Type.create(:name => "Banquet Hall")
Type.create(:name => "Bar/Club")
Type.create(:name => "Country/Golf Club")
Type.create(:name => "Church/Synagogue")
Type.create(:name => "Hotel")
Type.create(:name => "Restaurant")

puts 'DEFAULT AMENITIES'
Amenity.create(:name => "A/V Equipment")
Amenity.create(:name => "Catering")
Amenity.create(:name => "Garage Parking")
Amenity.create(:name => "Non-profit Discount")
Amenity.create(:name => "Onsite Food Service")
Amenity.create(:name => "Outdoor Catering")
Amenity.create(:name => "Street Parking")
Amenity.create(:name => "Valet Parking")
Amenity.create(:name => "WiFi")
