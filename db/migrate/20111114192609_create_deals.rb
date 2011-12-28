class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.text :long_description
      t.text :short_description
      t.integer :discount_price
      t.integer :original_price
      t.integer :percent_discount
      t.datetime :start_on
      t.datetime :end_on
      t.integer :gallery_id

      t.timestamps
    end
  end
end
