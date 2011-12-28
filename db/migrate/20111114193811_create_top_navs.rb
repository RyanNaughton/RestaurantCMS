class CreateTopNavs < ActiveRecord::Migration
  def change
    create_table :top_navs do |t|
      t.string :display_name
      t.string :nav_type
      t.integer :order
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
