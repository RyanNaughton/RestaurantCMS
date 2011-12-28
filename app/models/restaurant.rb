class Restaurant < ActiveRecord::Base

	has_many :categories
	has_many :top_navs
	has_many :events
	has_many :deals
	has_many :presses
	has_many :announcements
	has_many :galleries
	has_many :pictures, :through => :galleries

	has_many :user_restaurants
	has_many :users, :through => :user_restaurants

	belongs_to :neighborhood
	belongs_to :state
	belongs_to :zip

end
