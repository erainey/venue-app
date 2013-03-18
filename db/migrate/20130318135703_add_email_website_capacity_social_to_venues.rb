class AddEmailWebsiteCapacitySocialToVenues < ActiveRecord::Migration
  def change
  	add_column :venues, :email, :string
  	add_column :venues, :website, :string
  	add_column :venues, :capacity, :integer
  	add_column :venues, :facebook, :string
  	add_column :venues, :twitter, :string
  	add_column :venues, :youtube, :string
  	add_column :venues, :google_plus, :string
  end
end
