class AddDescriptionToAmenities < ActiveRecord::Migration
  def change
  	add_column :amenities, :description, :text
  end
end
