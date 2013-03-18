class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.text :description
      t.string :address_one
      t.string :address_two
      t.string :address_three
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :full_address
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
