class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
      t.string :name
      t.text :description
      t.integer :gallery_id
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
