class AddRestaurantIDtoDeals < ActiveRecord::Migration

	def change
	    add_column :deals, :restaurant_id, :integer
	end

end
