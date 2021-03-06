class Event < ActiveRecord::Base

	belongs_to :restaurant
	has_many :galleries, :as => :imageable
	has_many :pictures, :through => :galleries
	paginates_per 10

end
