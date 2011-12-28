class MenuItem < ActiveRecord::Base

	has_many :galleries, :as => :imageable
	has_many :pictures, :through => :galleries
	belongs_to :category


end
