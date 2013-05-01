class AddGalleryIdToGalleryImages < ActiveRecord::Migration
  def change
  	add_column :gallery_images, :gallery_id, :integer
  end
end
