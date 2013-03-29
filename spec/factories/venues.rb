FactoryGirl.define do
  factory :venue do
    name "Fontainebleau Miami Beach"
    address_one "4441 Collins Ave"
    address_two ""
    address_three ""
    city "Miami Beach"
    state "FL"
    zipcode "33140"
    phone "305-538-2000"
    website "http://www.fontainebleau.com/"
    email "info@fontainebleau.com"
    facebook "http://www.facebook.com/pages/Fontainebleau-Miami-Beach/78458342904?v=wall"
    twitter "http://twitter.com/Fontainebleau"
    google_plus "http://www.google.com"
    youtube "http://www.youtube.com/fontainebleaumb"
    description "The Fontainebleau Miami Beach or the Fontainebleau Hotel is one of the most historically and architecturally significant hotels on Miami Beach."
    price 1
    capacity 1000
    published true
    featured true
  end

  factory :invalid_venue, :class => 'Venue' do
    name ""
    address_one ""
    city ""
    state ""
    zipcode ""
    phone "ABCDEFGDH"
    website "Helloworld!!"
    price -1
    capacity -900
    published "test"
    featured "no"
  end

end