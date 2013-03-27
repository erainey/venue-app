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
    facebook "http://www.facebook.com"
    twitter "http://www.twitter.com"
    google_plus "http://www.google.com"
    youtube "http://www.youtube.com"
    description "The Fontainebleau Miami Beach or the Fontainebleau Hotel is one of the most historically and architecturally significant hotels on Miami Beach."
    price 1
    capacity 1000
    published true
    featured true
  end
end