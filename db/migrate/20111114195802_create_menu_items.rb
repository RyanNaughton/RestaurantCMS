class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.integer :category_id
      t.integer :order
      t.integer :gallery_id

      t.timestamps
    end
  end
end
