class CreateVenueAmenities < ActiveRecord::Migration
  def change
    create_table :venue_amenities do |t|
      t.references :venue
      t.references :amenity

      t.timestamps
    end
    add_index :venue_amenities, :venue_id
    add_index :venue_amenities, :amenity_id
  end
end
