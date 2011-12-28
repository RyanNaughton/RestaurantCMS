class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :name
      t.string :abbrv
      t.string :number

      t.timestamps
    end
  end
end
