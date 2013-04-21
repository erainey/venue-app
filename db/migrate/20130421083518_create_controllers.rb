class CreateControllers < ActiveRecord::Migration
  def change
    create_table :controllers do |t|
      t.string :admin/types

      t.timestamps
    end
  end
end
