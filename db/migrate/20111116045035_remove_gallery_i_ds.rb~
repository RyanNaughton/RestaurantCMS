class RemoveGalleryIDs < ActiveRecord::Migration

	def change
		remove_column :announcements, :gallery_id, :integer
		remove_column :deals, :gallery_id, :integer
		remove_column :events, :gallery_id, :integer
		remove_column :menu_items, :gallery_id, :integer
		remove_column :presses, :gallery_id, :integer
		remove_column :announcements, :gallery_id, :integer
		remove_column :galleries, :picture_id, :integer
		add_column :pictures, :gallery_id, :integer
	end
end
