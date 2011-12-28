class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :parent_category_id
      t.integer :order
      t.text :description
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
