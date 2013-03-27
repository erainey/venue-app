FactoryGirl.define do
  factory :venue_amenity do
    venue {FactoryGirl.create(:venue)}
    amenity {FactoryGirl.create(:amenity)}
  end

  factory :blank_venue_amenity do
    venue nil
    amenity nil
  end
end