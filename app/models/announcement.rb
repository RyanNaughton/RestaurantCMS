class Announcement < ActiveRecord::Base

	belongs_to :restaurant
	has_many :galleries, :as => :imageable
	has_many :pictures, :through => :galleries

end
