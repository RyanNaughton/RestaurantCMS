class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.integer :picture_id
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
