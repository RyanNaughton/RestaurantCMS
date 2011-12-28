class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.datetime :start_on
      t.datetime :end_on
      t.integer :price
      t.integer :restaurant_id
      t.integer :gallery_id

      t.timestamps
    end
  end
end
