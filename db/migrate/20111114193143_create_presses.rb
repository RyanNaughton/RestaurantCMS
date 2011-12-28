class CreatePresses < ActiveRecord::Migration
  def change
    create_table :presses do |t|
      t.string :title
      t.text :description
      t.string :link
      t.integer :restaurant_id
      t.integer :gallery_id

      t.timestamps
    end
  end
end
