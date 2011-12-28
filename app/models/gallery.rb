class Gallery < ActiveRecord::Base

	belongs_to :imageable, :polymorphic => true
	belongs_to :restaurant
	has_many :pictures

end
