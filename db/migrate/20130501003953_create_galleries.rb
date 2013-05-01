class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
    	t.string :name
    	t.references :gallery_image
    	t.references :venue
      t.timestamps
    end
  end
end
