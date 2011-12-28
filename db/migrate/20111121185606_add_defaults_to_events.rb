class AddDefaultsToEvents < ActiveRecord::Migration
  def change
    change_column :events, :name, :string, :default => "Event Name"
    change_column :events, :description, :text, :default => "Event Description"
    change_column :events, :start_on, :datetime, :default => Time.now
    change_column :events, :end_on, :datetime, :default => Time.now + 2.days
    change_column :events, :price, :integer, :default => 500
  end
end
