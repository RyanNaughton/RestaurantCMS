class MenusController < ApplicationController

	def index
		@categories = Category.where(:parent_category_id => nil)	
		render :layout => false
	end

end
