class AddImageToGalleryImages < ActiveRecord::Migration
  def change
  	add_column :gallery_images, :image, :string
  end
end
