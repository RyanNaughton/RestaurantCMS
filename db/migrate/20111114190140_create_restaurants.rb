class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :domain
      t.string :phone
      t.string :fax
      t.text :address_unformatted
      t.text :address_formatted
      t.string :street_number
      t.string :street_name
      t.string :street_suffix
      t.string :city
      t.integer :state
      t.integer :zip
      t.integer :neighborhood
      t.text :hours

      t.timestamps
    end
  end
end
