class TopnavsController < ApplicationController

	def index
		@restaurant = Restaurant.first
		@events = @restaurant.events.page nil
		@announcements = @restaurant.announcements
		@top_navs = @restaurant.top_navs.order("'order'")
		@categories = Category.where(:parent_category_id => nil)	
	end

	def about

	end

	def events

	end

	def menus

	end

	def gallery

	end

	def press

	end


end
