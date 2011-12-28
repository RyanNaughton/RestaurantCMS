class CreateZips < ActiveRecord::Migration
  def change
    create_table :zips do |t|
      t.integer :zipcode

      t.timestamps
    end
  end
end
