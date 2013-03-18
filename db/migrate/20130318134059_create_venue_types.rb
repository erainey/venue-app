class CreateVenueTypes < ActiveRecord::Migration
  def change
    create_table :venue_types do |t|
      t.references :venue
      t.references :type

      t.timestamps
    end
    add_index :venue_types, :venue_id
    add_index :venue_types, :type_id
  end
end
