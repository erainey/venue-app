class AddFeaturedPublishedPriceToVenues < ActiveRecord::Migration
  def change
  	add_column :venues, :featured, :boolean, :default => false
  	add_column :venues, :published, :boolean, :default => false
  	add_column :venues, :price, :integer
  end
end
