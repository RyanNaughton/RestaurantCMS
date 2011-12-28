class AddColumngIDtogallery < ActiveRecord::Migration
	def change
	    add_column :galleries, :gid, :integer
	end

end
