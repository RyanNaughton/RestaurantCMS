class AddImageableToGalleries < ActiveRecord::Migration
  def change
	remove_column :galleries, :gid, :integer
	add_column :galleries, :imageable_id, :integer
	add_column :galleries, :imageable_type, :string
  end
end
